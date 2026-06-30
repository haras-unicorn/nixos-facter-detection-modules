def "main" []: nothing -> nothing {
  nu $"($env.FILE_PWD)/($env.FILE_NAME)" -h
}

# Run detection on this machine
def "main detect" [name: string]: nothing -> nothing {
  cd (flake-root)
  let result = sudo nixos-facter | complete

  if $result.exit_code != 0 {
    print -e $"nixos-facter exited with code ($result.exit_code)."
    print -e $"stderr:\n($result.stderr)\n"
    print -e $"stdout:\n($result.stdout)\n"
    exit 1
  }

  $result.stdout
    | prettier --parser json
    | save -f ([ "test" $"report-($name).json" ] | path join)
}

# Preview docs
def "main docs" []: nothing -> nothing {
  cd (flake-root)
  mdbook serve ./docs
}

# Test repository
def "main test" []: nothing -> nothing {
  cd (flake-root)
  nix-unit --flake ".#tests" --show-trace
}

# Format repository
def "main format" []: nothing -> nothing {
  cd (flake-root)
  open --raw (nix build --no-link --print-out-paths ".#options")
    | save -f ./docs/options.md
  prettier --write (flake-root)
  nixfmt ...(fd '.*.nix$' (flake-root) | lines)
}

# Lint repository
def "main lint" []: nothing -> nothing {
  cd (flake-root)
  prettier --check (flake-root)
  nixfmt --check ...(fd '.*.nix$' (flake-root) | lines)
  markdownlint --ignore-path .gitignore (flake-root)
  cspell lint (flake-root) --no-progress
  if $env.NIX_BUILD_TOP? == null {
    if (markdown-link-check
      --config $"(flake-root)/.markdown-link-check.json"
      ...(fd '^.*.md$' (flake-root) | lines)
      | rg -q error
      | complete
      | get exit_code) == 0 {
      exit 1
    }
  }
}
