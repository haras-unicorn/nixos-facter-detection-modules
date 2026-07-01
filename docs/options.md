## hardware\.facter\.detection\.bluetooth\.enable

Whether the machine is capable of bluetooth\.

_Type:_ boolean

_Default:_

```nix
false
```

## hardware\.facter\.detection\.bluetooth\.receivers

Machine bluetooth receivers\.

_Type:_ submodule

_Default:_

```nix
{ }
```

## hardware\.facter\.detection\.bluetooth\.receivers\.byDev

Mapping from /dev path to device\.

_Type:_ attribute set of (submodule)

_Default:_

```nix
{ }
```

## hardware\.facter\.detection\.bluetooth\.receivers\.byDev\.\<name>\.dev

Device /dev paths\.

_Type:_ list of absolute path

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.bluetooth\.receivers\.byDev\.\<name>\.device

Facter device object\.

_Type:_ open submodule of raw value

## hardware\.facter\.detection\.bluetooth\.receivers\.byDev\.\<name>\.model

Device model name\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.bluetooth\.receivers\.byDev\.\<name>\.modules

Device driver kernel modules\.

_Type:_ list of string

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.bluetooth\.receivers\.byDev\.\<name>\.pci

Device PCI id\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.bluetooth\.receivers\.byDev\.\<name>\.sys

Device /sys path\.

_Type:_ null or absolute path

_Default:_

```nix
null
```

## hardware\.facter\.detection\.bluetooth\.receivers\.byModel

Devices sorted by model in descending alphabetical order\.

_Type:_ list of (submodule)

## hardware\.facter\.detection\.bluetooth\.receivers\.byModel\.\*\.dev

Device /dev paths\.

_Type:_ list of absolute path

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.bluetooth\.receivers\.byModel\.\*\.device

Facter device object\.

_Type:_ open submodule of raw value

## hardware\.facter\.detection\.bluetooth\.receivers\.byModel\.\*\.model

Device model name\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.bluetooth\.receivers\.byModel\.\*\.modules

Device driver kernel modules\.

_Type:_ list of string

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.bluetooth\.receivers\.byModel\.\*\.pci

Device PCI id\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.bluetooth\.receivers\.byModel\.\*\.sys

Device /sys path\.

_Type:_ null or absolute path

_Default:_

```nix
null
```

## hardware\.facter\.detection\.bluetooth\.receivers\.byPci

Mapping from PCI id to device\.

_Type:_ attribute set of (submodule)

_Default:_

```nix
{ }
```

## hardware\.facter\.detection\.bluetooth\.receivers\.byPci\.\<name>\.dev

Device /dev paths\.

_Type:_ list of absolute path

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.bluetooth\.receivers\.byPci\.\<name>\.device

Facter device object\.

_Type:_ open submodule of raw value

## hardware\.facter\.detection\.bluetooth\.receivers\.byPci\.\<name>\.model

Device model name\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.bluetooth\.receivers\.byPci\.\<name>\.modules

Device driver kernel modules\.

_Type:_ list of string

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.bluetooth\.receivers\.byPci\.\<name>\.pci

Device PCI id\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.bluetooth\.receivers\.byPci\.\<name>\.sys

Device /sys path\.

_Type:_ null or absolute path

_Default:_

```nix
null
```

## hardware\.facter\.detection\.bluetooth\.receivers\.bySys

Mapping from /sys path to device\.

_Type:_ attribute set of (submodule)

_Default:_

```nix
{ }
```

## hardware\.facter\.detection\.bluetooth\.receivers\.bySys\.\<name>\.dev

Device /dev paths\.

_Type:_ list of absolute path

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.bluetooth\.receivers\.bySys\.\<name>\.device

Facter device object\.

_Type:_ open submodule of raw value

## hardware\.facter\.detection\.bluetooth\.receivers\.bySys\.\<name>\.model

Device model name\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.bluetooth\.receivers\.bySys\.\<name>\.modules

Device driver kernel modules\.

_Type:_ list of string

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.bluetooth\.receivers\.bySys\.\<name>\.pci

Device PCI id\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.bluetooth\.receivers\.bySys\.\<name>\.sys

Device /sys path\.

_Type:_ null or absolute path

_Default:_

```nix
null
```

## hardware\.facter\.detection\.capabilities\.graphics

Whether the machine is capable of displaying graphics\.

_Type:_ boolean

_Default:_

```nix
false
```

## hardware\.facter\.detection\.capabilities\.interaction

Whether the machine is capable of being interacted with\.

_Type:_ boolean

_Default:_

```nix
false
```

## hardware\.facter\.detection\.capabilities\.listening

Whether the machine is capable of listening\.

_Type:_ boolean

_Default:_

```nix
false
```

## hardware\.facter\.detection\.capabilities\.pointing

Whether the machine is capable of being pointed into\.

_Type:_ boolean

_Default:_

```nix
false
```

## hardware\.facter\.detection\.capabilities\.sound

Whether the machine is capable of producing sound\.

_Type:_ boolean

_Default:_

```nix
false
```

## hardware\.facter\.detection\.capabilities\.typing

Whether the machine is capable of being typed into\.

_Type:_ boolean

_Default:_

```nix
false
```

## hardware\.facter\.detection\.cpu\.cores

Physical cores available on the machine\.

_Type:_ unsigned integer, meaning >=0

## hardware\.facter\.detection\.cpu\.device

Facter CPU device object\.

_Type:_ open submodule of raw value

## hardware\.facter\.detection\.cpu\.threads

Logical threads available on the machine\.

_Type:_ unsigned integer, meaning >=0

## hardware\.facter\.detection\.cpu\.type

CPU type\.

_Type:_ one of “intel”, “amd”, “arm”

## hardware\.facter\.detection\.disks

Machine disks\.

_Type:_ submodule

_Default:_

```nix
{ }
```

## hardware\.facter\.detection\.disks\.byDev

Mapping from /dev path to device\.

_Type:_ attribute set of (submodule)

_Default:_

```nix
{ }
```

## hardware\.facter\.detection\.disks\.byDev\.\<name>\.dev

Device /dev paths\.

_Type:_ list of absolute path

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.disks\.byDev\.\<name>\.device

Facter device object\.

_Type:_ open submodule of raw value

## hardware\.facter\.detection\.disks\.byDev\.\<name>\.model

Device model name\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.disks\.byDev\.\<name>\.modules

Device driver kernel modules\.

_Type:_ list of string

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.disks\.byDev\.\<name>\.mounts

Paths the disk is mounted on\.

_Type:_ list of absolute path

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.disks\.byDev\.\<name>\.paths

Paths to disk block device\.

_Type:_ list of absolute path

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.disks\.byDev\.\<name>\.pci

Device PCI id\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.disks\.byDev\.\<name>\.size

Disk size in bytes\.

_Type:_ unsigned integer, meaning >=0

## hardware\.facter\.detection\.disks\.byDev\.\<name>\.sys

Device /sys path\.

_Type:_ null or absolute path

_Default:_

```nix
null
```

## hardware\.facter\.detection\.disks\.byModel

Devices sorted by model in descending alphabetical order\.

_Type:_ list of (submodule)

## hardware\.facter\.detection\.disks\.byModel\.\*\.dev

Device /dev paths\.

_Type:_ list of absolute path

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.disks\.byModel\.\*\.device

Facter device object\.

_Type:_ open submodule of raw value

## hardware\.facter\.detection\.disks\.byModel\.\*\.model

Device model name\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.disks\.byModel\.\*\.modules

Device driver kernel modules\.

_Type:_ list of string

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.disks\.byModel\.\*\.mounts

Paths the disk is mounted on\.

_Type:_ list of absolute path

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.disks\.byModel\.\*\.paths

Paths to disk block device\.

_Type:_ list of absolute path

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.disks\.byModel\.\*\.pci

Device PCI id\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.disks\.byModel\.\*\.size

Disk size in bytes\.

_Type:_ unsigned integer, meaning >=0

## hardware\.facter\.detection\.disks\.byModel\.\*\.sys

Device /sys path\.

_Type:_ null or absolute path

_Default:_

```nix
null
```

## hardware\.facter\.detection\.disks\.byMount

User-provided mapping of mount to disk\.

_Type:_ attribute set of (submodule)

_Default:_

```nix
{ }
```

## hardware\.facter\.detection\.disks\.byMount\.\<name>\.dev

Device /dev paths\.

_Type:_ list of absolute path

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.disks\.byMount\.\<name>\.device

Facter device object\.

_Type:_ open submodule of raw value

## hardware\.facter\.detection\.disks\.byMount\.\<name>\.model

Device model name\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.disks\.byMount\.\<name>\.modules

Device driver kernel modules\.

_Type:_ list of string

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.disks\.byMount\.\<name>\.mounts

Paths the disk is mounted on\.

_Type:_ list of absolute path

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.disks\.byMount\.\<name>\.paths

Paths to disk block device\.

_Type:_ list of absolute path

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.disks\.byMount\.\<name>\.pci

Device PCI id\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.disks\.byMount\.\<name>\.size

Disk size in bytes\.

_Type:_ unsigned integer, meaning >=0

## hardware\.facter\.detection\.disks\.byMount\.\<name>\.sys

Device /sys path\.

_Type:_ null or absolute path

_Default:_

```nix
null
```

## hardware\.facter\.detection\.disks\.byPci

Mapping from PCI id to device\.

_Type:_ attribute set of (submodule)

_Default:_

```nix
{ }
```

## hardware\.facter\.detection\.disks\.byPci\.\<name>\.dev

Device /dev paths\.

_Type:_ list of absolute path

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.disks\.byPci\.\<name>\.device

Facter device object\.

_Type:_ open submodule of raw value

## hardware\.facter\.detection\.disks\.byPci\.\<name>\.model

Device model name\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.disks\.byPci\.\<name>\.modules

Device driver kernel modules\.

_Type:_ list of string

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.disks\.byPci\.\<name>\.mounts

Paths the disk is mounted on\.

_Type:_ list of absolute path

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.disks\.byPci\.\<name>\.paths

Paths to disk block device\.

_Type:_ list of absolute path

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.disks\.byPci\.\<name>\.pci

Device PCI id\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.disks\.byPci\.\<name>\.size

Disk size in bytes\.

_Type:_ unsigned integer, meaning >=0

## hardware\.facter\.detection\.disks\.byPci\.\<name>\.sys

Device /sys path\.

_Type:_ null or absolute path

_Default:_

```nix
null
```

## hardware\.facter\.detection\.disks\.bySys

Mapping from /sys path to device\.

_Type:_ attribute set of (submodule)

_Default:_

```nix
{ }
```

## hardware\.facter\.detection\.disks\.bySys\.\<name>\.dev

Device /dev paths\.

_Type:_ list of absolute path

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.disks\.bySys\.\<name>\.device

Facter device object\.

_Type:_ open submodule of raw value

## hardware\.facter\.detection\.disks\.bySys\.\<name>\.model

Device model name\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.disks\.bySys\.\<name>\.modules

Device driver kernel modules\.

_Type:_ list of string

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.disks\.bySys\.\<name>\.mounts

Paths the disk is mounted on\.

_Type:_ list of absolute path

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.disks\.bySys\.\<name>\.paths

Paths to disk block device\.

_Type:_ list of absolute path

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.disks\.bySys\.\<name>\.pci

Device PCI id\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.disks\.bySys\.\<name>\.size

Disk size in bytes\.

_Type:_ unsigned integer, meaning >=0

## hardware\.facter\.detection\.disks\.bySys\.\<name>\.sys

Device /sys path\.

_Type:_ null or absolute path

_Default:_

```nix
null
```

## hardware\.facter\.detection\.graphics\.enable

Whether the machine has a graphics device\.

_Type:_ boolean

_Default:_

```nix
false
```

## hardware\.facter\.detection\.graphics\.cards

Machine graphics cards\.

_Type:_ submodule

_Default:_

```nix
{ }
```

## hardware\.facter\.detection\.graphics\.cards\.byDev

Mapping from /dev path to device\.

_Type:_ attribute set of (submodule)

_Default:_

```nix
{ }
```

## hardware\.facter\.detection\.graphics\.cards\.byDev\.\<name>\.dev

Device /dev paths\.

_Type:_ list of absolute path

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.graphics\.cards\.byDev\.\<name>\.device

Facter device object\.

_Type:_ open submodule of raw value

## hardware\.facter\.detection\.graphics\.cards\.byDev\.\<name>\.model

Device model name\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.graphics\.cards\.byDev\.\<name>\.modules

Device driver kernel modules\.

_Type:_ list of string

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.graphics\.cards\.byDev\.\<name>\.open

Whether the graphics card driver is open source\.

_Type:_ boolean

## hardware\.facter\.detection\.graphics\.cards\.byDev\.\<name>\.pci

Device PCI id\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.graphics\.cards\.byDev\.\<name>\.sys

Device /sys path\.

_Type:_ null or absolute path

_Default:_

```nix
null
```

## hardware\.facter\.detection\.graphics\.cards\.byDev\.\<name>\.type

Graphics card type\.

_Type:_ one of “intel”, “amd”, “nvidia”

## hardware\.facter\.detection\.graphics\.cards\.byDev\.\<name>\.version

Graphics card driver version\.

_Type:_ string

## hardware\.facter\.detection\.graphics\.cards\.byDev\.\<name>\.wayland

Whether the graphics card supports Wayland\.

_Type:_ boolean

## hardware\.facter\.detection\.graphics\.cards\.byModel

Devices sorted by model in descending alphabetical order\.

_Type:_ list of (submodule)

## hardware\.facter\.detection\.graphics\.cards\.byModel\.\*\.dev

Device /dev paths\.

_Type:_ list of absolute path

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.graphics\.cards\.byModel\.\*\.device

Facter device object\.

_Type:_ open submodule of raw value

## hardware\.facter\.detection\.graphics\.cards\.byModel\.\*\.model

Device model name\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.graphics\.cards\.byModel\.\*\.modules

Device driver kernel modules\.

_Type:_ list of string

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.graphics\.cards\.byModel\.\*\.open

Whether the graphics card driver is open source\.

_Type:_ boolean

## hardware\.facter\.detection\.graphics\.cards\.byModel\.\*\.pci

Device PCI id\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.graphics\.cards\.byModel\.\*\.sys

Device /sys path\.

_Type:_ null or absolute path

_Default:_

```nix
null
```

## hardware\.facter\.detection\.graphics\.cards\.byModel\.\*\.type

Graphics card type\.

_Type:_ one of “intel”, “amd”, “nvidia”

## hardware\.facter\.detection\.graphics\.cards\.byModel\.\*\.version

Graphics card driver version\.

_Type:_ string

## hardware\.facter\.detection\.graphics\.cards\.byModel\.\*\.wayland

Whether the graphics card supports Wayland\.

_Type:_ boolean

## hardware\.facter\.detection\.graphics\.cards\.byPci

Mapping from PCI id to device\.

_Type:_ attribute set of (submodule)

_Default:_

```nix
{ }
```

## hardware\.facter\.detection\.graphics\.cards\.byPci\.\<name>\.dev

Device /dev paths\.

_Type:_ list of absolute path

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.graphics\.cards\.byPci\.\<name>\.device

Facter device object\.

_Type:_ open submodule of raw value

## hardware\.facter\.detection\.graphics\.cards\.byPci\.\<name>\.model

Device model name\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.graphics\.cards\.byPci\.\<name>\.modules

Device driver kernel modules\.

_Type:_ list of string

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.graphics\.cards\.byPci\.\<name>\.open

Whether the graphics card driver is open source\.

_Type:_ boolean

## hardware\.facter\.detection\.graphics\.cards\.byPci\.\<name>\.pci

Device PCI id\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.graphics\.cards\.byPci\.\<name>\.sys

Device /sys path\.

_Type:_ null or absolute path

_Default:_

```nix
null
```

## hardware\.facter\.detection\.graphics\.cards\.byPci\.\<name>\.type

Graphics card type\.

_Type:_ one of “intel”, “amd”, “nvidia”

## hardware\.facter\.detection\.graphics\.cards\.byPci\.\<name>\.version

Graphics card driver version\.

_Type:_ string

## hardware\.facter\.detection\.graphics\.cards\.byPci\.\<name>\.wayland

Whether the graphics card supports Wayland\.

_Type:_ boolean

## hardware\.facter\.detection\.graphics\.cards\.byPort

User-provided mapping from monitor port to graphics card\.

_Type:_ attribute set of (submodule)

_Default:_

```nix
{ }
```

## hardware\.facter\.detection\.graphics\.cards\.byPort\.\<name>\.dev

Device /dev paths\.

_Type:_ list of absolute path

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.graphics\.cards\.byPort\.\<name>\.device

Facter device object\.

_Type:_ open submodule of raw value

## hardware\.facter\.detection\.graphics\.cards\.byPort\.\<name>\.model

Device model name\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.graphics\.cards\.byPort\.\<name>\.modules

Device driver kernel modules\.

_Type:_ list of string

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.graphics\.cards\.byPort\.\<name>\.open

Whether the graphics card driver is open source\.

_Type:_ boolean

## hardware\.facter\.detection\.graphics\.cards\.byPort\.\<name>\.pci

Device PCI id\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.graphics\.cards\.byPort\.\<name>\.sys

Device /sys path\.

_Type:_ null or absolute path

_Default:_

```nix
null
```

## hardware\.facter\.detection\.graphics\.cards\.byPort\.\<name>\.type

Graphics card type\.

_Type:_ one of “intel”, “amd”, “nvidia”

## hardware\.facter\.detection\.graphics\.cards\.byPort\.\<name>\.version

Graphics card driver version\.

_Type:_ string

## hardware\.facter\.detection\.graphics\.cards\.byPort\.\<name>\.wayland

Whether the graphics card supports Wayland\.

_Type:_ boolean

## hardware\.facter\.detection\.graphics\.cards\.bySys

Mapping from /sys path to device\.

_Type:_ attribute set of (submodule)

_Default:_

```nix
{ }
```

## hardware\.facter\.detection\.graphics\.cards\.bySys\.\<name>\.dev

Device /dev paths\.

_Type:_ list of absolute path

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.graphics\.cards\.bySys\.\<name>\.device

Facter device object\.

_Type:_ open submodule of raw value

## hardware\.facter\.detection\.graphics\.cards\.bySys\.\<name>\.model

Device model name\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.graphics\.cards\.bySys\.\<name>\.modules

Device driver kernel modules\.

_Type:_ list of string

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.graphics\.cards\.bySys\.\<name>\.open

Whether the graphics card driver is open source\.

_Type:_ boolean

## hardware\.facter\.detection\.graphics\.cards\.bySys\.\<name>\.pci

Device PCI id\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.graphics\.cards\.bySys\.\<name>\.sys

Device /sys path\.

_Type:_ null or absolute path

_Default:_

```nix
null
```

## hardware\.facter\.detection\.graphics\.cards\.bySys\.\<name>\.type

Graphics card type\.

_Type:_ one of “intel”, “amd”, “nvidia”

## hardware\.facter\.detection\.graphics\.cards\.bySys\.\<name>\.version

Graphics card driver version\.

_Type:_ string

## hardware\.facter\.detection\.graphics\.cards\.bySys\.\<name>\.wayland

Whether the graphics card supports Wayland\.

_Type:_ boolean

## hardware\.facter\.detection\.graphics\.cards\.byVram

Graphics cards sorted by VRAM size in descending order\.

_Type:_ list of (submodule)

## hardware\.facter\.detection\.graphics\.cards\.byVram\.\*\.dev

Device /dev paths\.

_Type:_ list of absolute path

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.graphics\.cards\.byVram\.\*\.device

Facter device object\.

_Type:_ open submodule of raw value

## hardware\.facter\.detection\.graphics\.cards\.byVram\.\*\.model

Device model name\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.graphics\.cards\.byVram\.\*\.modules

Device driver kernel modules\.

_Type:_ list of string

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.graphics\.cards\.byVram\.\*\.open

Whether the graphics card driver is open source\.

_Type:_ boolean

## hardware\.facter\.detection\.graphics\.cards\.byVram\.\*\.pci

Device PCI id\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.graphics\.cards\.byVram\.\*\.sys

Device /sys path\.

_Type:_ null or absolute path

_Default:_

```nix
null
```

## hardware\.facter\.detection\.graphics\.cards\.byVram\.\*\.type

Graphics card type\.

_Type:_ one of “intel”, “amd”, “nvidia”

## hardware\.facter\.detection\.graphics\.cards\.byVram\.\*\.version

Graphics card driver version\.

_Type:_ string

## hardware\.facter\.detection\.graphics\.cards\.byVram\.\*\.wayland

Whether the graphics card supports Wayland\.

_Type:_ boolean

## hardware\.facter\.detection\.graphics\.cards\.default

User-provided default graphics card\.

_Type:_ null or (submodule)

_Default:_

```nix
null
```

## hardware\.facter\.detection\.graphics\.cards\.default\.dev

Device /dev paths\.

_Type:_ list of absolute path

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.graphics\.cards\.default\.device

Facter device object\.

_Type:_ open submodule of raw value

## hardware\.facter\.detection\.graphics\.cards\.default\.model

Device model name\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.graphics\.cards\.default\.modules

Device driver kernel modules\.

_Type:_ list of string

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.graphics\.cards\.default\.open

Whether the graphics card driver is open source\.

_Type:_ boolean

## hardware\.facter\.detection\.graphics\.cards\.default\.pci

Device PCI id\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.graphics\.cards\.default\.sys

Device /sys path\.

_Type:_ null or absolute path

_Default:_

```nix
null
```

## hardware\.facter\.detection\.graphics\.cards\.default\.type

Graphics card type\.

_Type:_ one of “intel”, “amd”, “nvidia”

## hardware\.facter\.detection\.graphics\.cards\.default\.version

Graphics card driver version\.

_Type:_ string

## hardware\.facter\.detection\.graphics\.cards\.default\.wayland

Whether the graphics card supports Wayland\.

_Type:_ boolean

## hardware\.facter\.detection\.graphics\.cards\.integrated

User-provided integrated graphics card\.

_Type:_ null or (submodule)

_Default:_

```nix
null
```

## hardware\.facter\.detection\.graphics\.cards\.integrated\.dev

Device /dev paths\.

_Type:_ list of absolute path

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.graphics\.cards\.integrated\.device

Facter device object\.

_Type:_ open submodule of raw value

## hardware\.facter\.detection\.graphics\.cards\.integrated\.model

Device model name\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.graphics\.cards\.integrated\.modules

Device driver kernel modules\.

_Type:_ list of string

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.graphics\.cards\.integrated\.open

Whether the graphics card driver is open source\.

_Type:_ boolean

## hardware\.facter\.detection\.graphics\.cards\.integrated\.pci

Device PCI id\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.graphics\.cards\.integrated\.sys

Device /sys path\.

_Type:_ null or absolute path

_Default:_

```nix
null
```

## hardware\.facter\.detection\.graphics\.cards\.integrated\.type

Graphics card type\.

_Type:_ one of “intel”, “amd”, “nvidia”

## hardware\.facter\.detection\.graphics\.cards\.integrated\.version

Graphics card driver version\.

_Type:_ string

## hardware\.facter\.detection\.graphics\.cards\.integrated\.wayland

Whether the graphics card supports Wayland\.

_Type:_ boolean

## hardware\.facter\.detection\.logitech\.enable

Whether the machine has a connected Logitech receiver\.

_Type:_ boolean

_Default:_

```nix
false
```

## hardware\.facter\.detection\.logitech\.receivers

Machine logitech receivers\.

_Type:_ submodule

_Default:_

```nix
{ }
```

## hardware\.facter\.detection\.logitech\.receivers\.byDev

Mapping from /dev path to device\.

_Type:_ attribute set of (submodule)

_Default:_

```nix
{ }
```

## hardware\.facter\.detection\.logitech\.receivers\.byDev\.\<name>\.dev

Device /dev paths\.

_Type:_ list of absolute path

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.logitech\.receivers\.byDev\.\<name>\.device

Facter device object\.

_Type:_ open submodule of raw value

## hardware\.facter\.detection\.logitech\.receivers\.byDev\.\<name>\.model

Device model name\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.logitech\.receivers\.byDev\.\<name>\.modules

Device driver kernel modules\.

_Type:_ list of string

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.logitech\.receivers\.byDev\.\<name>\.pci

Device PCI id\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.logitech\.receivers\.byDev\.\<name>\.sys

Device /sys path\.

_Type:_ null or absolute path

_Default:_

```nix
null
```

## hardware\.facter\.detection\.logitech\.receivers\.byModel

Devices sorted by model in descending alphabetical order\.

_Type:_ list of (submodule)

## hardware\.facter\.detection\.logitech\.receivers\.byModel\.\*\.dev

Device /dev paths\.

_Type:_ list of absolute path

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.logitech\.receivers\.byModel\.\*\.device

Facter device object\.

_Type:_ open submodule of raw value

## hardware\.facter\.detection\.logitech\.receivers\.byModel\.\*\.model

Device model name\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.logitech\.receivers\.byModel\.\*\.modules

Device driver kernel modules\.

_Type:_ list of string

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.logitech\.receivers\.byModel\.\*\.pci

Device PCI id\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.logitech\.receivers\.byModel\.\*\.sys

Device /sys path\.

_Type:_ null or absolute path

_Default:_

```nix
null
```

## hardware\.facter\.detection\.logitech\.receivers\.byPci

Mapping from PCI id to device\.

_Type:_ attribute set of (submodule)

_Default:_

```nix
{ }
```

## hardware\.facter\.detection\.logitech\.receivers\.byPci\.\<name>\.dev

Device /dev paths\.

_Type:_ list of absolute path

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.logitech\.receivers\.byPci\.\<name>\.device

Facter device object\.

_Type:_ open submodule of raw value

## hardware\.facter\.detection\.logitech\.receivers\.byPci\.\<name>\.model

Device model name\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.logitech\.receivers\.byPci\.\<name>\.modules

Device driver kernel modules\.

_Type:_ list of string

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.logitech\.receivers\.byPci\.\<name>\.pci

Device PCI id\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.logitech\.receivers\.byPci\.\<name>\.sys

Device /sys path\.

_Type:_ null or absolute path

_Default:_

```nix
null
```

## hardware\.facter\.detection\.logitech\.receivers\.bySys

Mapping from /sys path to device\.

_Type:_ attribute set of (submodule)

_Default:_

```nix
{ }
```

## hardware\.facter\.detection\.logitech\.receivers\.bySys\.\<name>\.dev

Device /dev paths\.

_Type:_ list of absolute path

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.logitech\.receivers\.bySys\.\<name>\.device

Facter device object\.

_Type:_ open submodule of raw value

## hardware\.facter\.detection\.logitech\.receivers\.bySys\.\<name>\.model

Device model name\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.logitech\.receivers\.bySys\.\<name>\.modules

Device driver kernel modules\.

_Type:_ list of string

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.logitech\.receivers\.bySys\.\<name>\.pci

Device PCI id\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.logitech\.receivers\.bySys\.\<name>\.sys

Device /sys path\.

_Type:_ null or absolute path

_Default:_

```nix
null
```

## hardware\.facter\.detection\.memory\.device

Facter memory device object\.

_Type:_ open submodule of raw value

## hardware\.facter\.detection\.memory\.size

Machine memory in bytes\.

_Type:_ unsigned integer, meaning >=0

## hardware\.facter\.detection\.monitor\.enable

Whether the machine has a monitor\.

_Type:_ boolean

_Default:_

```nix
false
```

## hardware\.facter\.detection\.monitor\.displays

Machine graphics cards\.

_Type:_ submodule

_Default:_

```nix
{ }
```

## hardware\.facter\.detection\.monitor\.displays\.byDev

Mapping from /dev path to device\.

_Type:_ attribute set of (submodule)

_Default:_

```nix
{ }
```

## hardware\.facter\.detection\.monitor\.displays\.byDev\.\<name>\.dev

Device /dev paths\.

_Type:_ list of absolute path

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.monitor\.displays\.byDev\.\<name>\.device

Facter device object\.

_Type:_ open submodule of raw value

## hardware\.facter\.detection\.monitor\.displays\.byDev\.\<name>\.dpi

Monitor DPI\.

_Type:_ floating point number

## hardware\.facter\.detection\.monitor\.displays\.byDev\.\<name>\.height

Monitor height in pixels\.

_Type:_ unsigned integer, meaning >=0

## hardware\.facter\.detection\.monitor\.displays\.byDev\.\<name>\.model

Device model name\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.monitor\.displays\.byDev\.\<name>\.modules

Device driver kernel modules\.

_Type:_ list of string

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.monitor\.displays\.byDev\.\<name>\.pci

Device PCI id\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.monitor\.displays\.byDev\.\<name>\.sys

Device /sys path\.

_Type:_ null or absolute path

_Default:_

```nix
null
```

## hardware\.facter\.detection\.monitor\.displays\.byDev\.\<name>\.width

Monitor width in pixels\.

_Type:_ unsigned integer, meaning >=0

## hardware\.facter\.detection\.monitor\.displays\.byModel

Devices sorted by model in descending alphabetical order\.

_Type:_ list of (submodule)

## hardware\.facter\.detection\.monitor\.displays\.byModel\.\*\.dev

Device /dev paths\.

_Type:_ list of absolute path

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.monitor\.displays\.byModel\.\*\.device

Facter device object\.

_Type:_ open submodule of raw value

## hardware\.facter\.detection\.monitor\.displays\.byModel\.\*\.dpi

Monitor DPI\.

_Type:_ floating point number

## hardware\.facter\.detection\.monitor\.displays\.byModel\.\*\.height

Monitor height in pixels\.

_Type:_ unsigned integer, meaning >=0

## hardware\.facter\.detection\.monitor\.displays\.byModel\.\*\.model

Device model name\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.monitor\.displays\.byModel\.\*\.modules

Device driver kernel modules\.

_Type:_ list of string

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.monitor\.displays\.byModel\.\*\.pci

Device PCI id\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.monitor\.displays\.byModel\.\*\.sys

Device /sys path\.

_Type:_ null or absolute path

_Default:_

```nix
null
```

## hardware\.facter\.detection\.monitor\.displays\.byModel\.\*\.width

Monitor width in pixels\.

_Type:_ unsigned integer, meaning >=0

## hardware\.facter\.detection\.monitor\.displays\.byPci

Mapping from PCI id to device\.

_Type:_ attribute set of (submodule)

_Default:_

```nix
{ }
```

## hardware\.facter\.detection\.monitor\.displays\.byPci\.\<name>\.dev

Device /dev paths\.

_Type:_ list of absolute path

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.monitor\.displays\.byPci\.\<name>\.device

Facter device object\.

_Type:_ open submodule of raw value

## hardware\.facter\.detection\.monitor\.displays\.byPci\.\<name>\.dpi

Monitor DPI\.

_Type:_ floating point number

## hardware\.facter\.detection\.monitor\.displays\.byPci\.\<name>\.height

Monitor height in pixels\.

_Type:_ unsigned integer, meaning >=0

## hardware\.facter\.detection\.monitor\.displays\.byPci\.\<name>\.model

Device model name\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.monitor\.displays\.byPci\.\<name>\.modules

Device driver kernel modules\.

_Type:_ list of string

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.monitor\.displays\.byPci\.\<name>\.pci

Device PCI id\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.monitor\.displays\.byPci\.\<name>\.sys

Device /sys path\.

_Type:_ null or absolute path

_Default:_

```nix
null
```

## hardware\.facter\.detection\.monitor\.displays\.byPci\.\<name>\.width

Monitor width in pixels\.

_Type:_ unsigned integer, meaning >=0

## hardware\.facter\.detection\.monitor\.displays\.bySize

Monitor displays sorted by size in pixels in descending order\.

_Type:_ list of (submodule)

## hardware\.facter\.detection\.monitor\.displays\.bySize\.\*\.dev

Device /dev paths\.

_Type:_ list of absolute path

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.monitor\.displays\.bySize\.\*\.device

Facter device object\.

_Type:_ open submodule of raw value

## hardware\.facter\.detection\.monitor\.displays\.bySize\.\*\.dpi

Monitor DPI\.

_Type:_ floating point number

## hardware\.facter\.detection\.monitor\.displays\.bySize\.\*\.height

Monitor height in pixels\.

_Type:_ unsigned integer, meaning >=0

## hardware\.facter\.detection\.monitor\.displays\.bySize\.\*\.model

Device model name\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.monitor\.displays\.bySize\.\*\.modules

Device driver kernel modules\.

_Type:_ list of string

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.monitor\.displays\.bySize\.\*\.pci

Device PCI id\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.monitor\.displays\.bySize\.\*\.sys

Device /sys path\.

_Type:_ null or absolute path

_Default:_

```nix
null
```

## hardware\.facter\.detection\.monitor\.displays\.bySize\.\*\.width

Monitor width in pixels\.

_Type:_ unsigned integer, meaning >=0

## hardware\.facter\.detection\.monitor\.displays\.bySys

Mapping from /sys path to device\.

_Type:_ attribute set of (submodule)

_Default:_

```nix
{ }
```

## hardware\.facter\.detection\.monitor\.displays\.bySys\.\<name>\.dev

Device /dev paths\.

_Type:_ list of absolute path

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.monitor\.displays\.bySys\.\<name>\.device

Facter device object\.

_Type:_ open submodule of raw value

## hardware\.facter\.detection\.monitor\.displays\.bySys\.\<name>\.dpi

Monitor DPI\.

_Type:_ floating point number

## hardware\.facter\.detection\.monitor\.displays\.bySys\.\<name>\.height

Monitor height in pixels\.

_Type:_ unsigned integer, meaning >=0

## hardware\.facter\.detection\.monitor\.displays\.bySys\.\<name>\.model

Device model name\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.monitor\.displays\.bySys\.\<name>\.modules

Device driver kernel modules\.

_Type:_ list of string

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.monitor\.displays\.bySys\.\<name>\.pci

Device PCI id\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.monitor\.displays\.bySys\.\<name>\.sys

Device /sys path\.

_Type:_ null or absolute path

_Default:_

```nix
null
```

## hardware\.facter\.detection\.monitor\.displays\.bySys\.\<name>\.width

Monitor width in pixels\.

_Type:_ unsigned integer, meaning >=0

## hardware\.facter\.detection\.monitor\.displays\.default

User-provided default monitor display\.

_Type:_ null or (submodule)

_Default:_

```nix
null
```

## hardware\.facter\.detection\.monitor\.displays\.default\.dev

Device /dev paths\.

_Type:_ list of absolute path

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.monitor\.displays\.default\.device

Facter device object\.

_Type:_ open submodule of raw value

## hardware\.facter\.detection\.monitor\.displays\.default\.dpi

Monitor DPI\.

_Type:_ floating point number

## hardware\.facter\.detection\.monitor\.displays\.default\.height

Monitor height in pixels\.

_Type:_ unsigned integer, meaning >=0

## hardware\.facter\.detection\.monitor\.displays\.default\.model

Device model name\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.monitor\.displays\.default\.modules

Device driver kernel modules\.

_Type:_ list of string

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.monitor\.displays\.default\.pci

Device PCI id\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.monitor\.displays\.default\.sys

Device /sys path\.

_Type:_ null or absolute path

_Default:_

```nix
null
```

## hardware\.facter\.detection\.monitor\.displays\.default\.width

Monitor width in pixels\.

_Type:_ unsigned integer, meaning >=0

## hardware\.facter\.detection\.network\.enable

Whether the machine has network access\.

_Type:_ boolean

_Default:_

```nix
false
```

## hardware\.facter\.detection\.network\.interfaces

Machine network interfaces\.

_Type:_ submodule

_Default:_

```nix
{ }
```

## hardware\.facter\.detection\.network\.interfaces\.byDev

Mapping from /dev path to device\.

_Type:_ attribute set of (submodule)

_Default:_

```nix
{ }
```

## hardware\.facter\.detection\.network\.interfaces\.byDev\.\<name>\.dev

Device /dev paths\.

_Type:_ list of absolute path

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.network\.interfaces\.byDev\.\<name>\.device

Facter device object\.

_Type:_ open submodule of raw value

## hardware\.facter\.detection\.network\.interfaces\.byDev\.\<name>\.model

Device model name\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.network\.interfaces\.byDev\.\<name>\.modules

Device driver kernel modules\.

_Type:_ list of string

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.network\.interfaces\.byDev\.\<name>\.name

Network interface name\.

_Type:_ string

## hardware\.facter\.detection\.network\.interfaces\.byDev\.\<name>\.pci

Device PCI id\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.network\.interfaces\.byDev\.\<name>\.sys

Device /sys path\.

_Type:_ null or absolute path

_Default:_

```nix
null
```

## hardware\.facter\.detection\.network\.interfaces\.byModel

Devices sorted by model in descending alphabetical order\.

_Type:_ list of (submodule)

## hardware\.facter\.detection\.network\.interfaces\.byModel\.\*\.dev

Device /dev paths\.

_Type:_ list of absolute path

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.network\.interfaces\.byModel\.\*\.device

Facter device object\.

_Type:_ open submodule of raw value

## hardware\.facter\.detection\.network\.interfaces\.byModel\.\*\.model

Device model name\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.network\.interfaces\.byModel\.\*\.modules

Device driver kernel modules\.

_Type:_ list of string

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.network\.interfaces\.byModel\.\*\.name

Network interface name\.

_Type:_ string

## hardware\.facter\.detection\.network\.interfaces\.byModel\.\*\.pci

Device PCI id\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.network\.interfaces\.byModel\.\*\.sys

Device /sys path\.

_Type:_ null or absolute path

_Default:_

```nix
null
```

## hardware\.facter\.detection\.network\.interfaces\.byName

Mapping of name to network interface\.

_Type:_ attribute set of (submodule)

## hardware\.facter\.detection\.network\.interfaces\.byName\.\<name>\.dev

Device /dev paths\.

_Type:_ list of absolute path

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.network\.interfaces\.byName\.\<name>\.device

Facter device object\.

_Type:_ open submodule of raw value

## hardware\.facter\.detection\.network\.interfaces\.byName\.\<name>\.model

Device model name\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.network\.interfaces\.byName\.\<name>\.modules

Device driver kernel modules\.

_Type:_ list of string

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.network\.interfaces\.byName\.\<name>\.name

Network interface name\.

_Type:_ string

## hardware\.facter\.detection\.network\.interfaces\.byName\.\<name>\.pci

Device PCI id\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.network\.interfaces\.byName\.\<name>\.sys

Device /sys path\.

_Type:_ null or absolute path

_Default:_

```nix
null
```

## hardware\.facter\.detection\.network\.interfaces\.byPci

Mapping from PCI id to device\.

_Type:_ attribute set of (submodule)

_Default:_

```nix
{ }
```

## hardware\.facter\.detection\.network\.interfaces\.byPci\.\<name>\.dev

Device /dev paths\.

_Type:_ list of absolute path

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.network\.interfaces\.byPci\.\<name>\.device

Facter device object\.

_Type:_ open submodule of raw value

## hardware\.facter\.detection\.network\.interfaces\.byPci\.\<name>\.model

Device model name\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.network\.interfaces\.byPci\.\<name>\.modules

Device driver kernel modules\.

_Type:_ list of string

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.network\.interfaces\.byPci\.\<name>\.name

Network interface name\.

_Type:_ string

## hardware\.facter\.detection\.network\.interfaces\.byPci\.\<name>\.pci

Device PCI id\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.network\.interfaces\.byPci\.\<name>\.sys

Device /sys path\.

_Type:_ null or absolute path

_Default:_

```nix
null
```

## hardware\.facter\.detection\.network\.interfaces\.bySys

Mapping from /sys path to device\.

_Type:_ attribute set of (submodule)

_Default:_

```nix
{ }
```

## hardware\.facter\.detection\.network\.interfaces\.bySys\.\<name>\.dev

Device /dev paths\.

_Type:_ list of absolute path

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.network\.interfaces\.bySys\.\<name>\.device

Facter device object\.

_Type:_ open submodule of raw value

## hardware\.facter\.detection\.network\.interfaces\.bySys\.\<name>\.model

Device model name\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.network\.interfaces\.bySys\.\<name>\.modules

Device driver kernel modules\.

_Type:_ list of string

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.network\.interfaces\.bySys\.\<name>\.name

Network interface name\.

_Type:_ string

## hardware\.facter\.detection\.network\.interfaces\.bySys\.\<name>\.pci

Device PCI id\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.network\.interfaces\.bySys\.\<name>\.sys

Device /sys path\.

_Type:_ null or absolute path

_Default:_

```nix
null
```

## hardware\.facter\.detection\.network\.interfaces\.default

User-provided default network interface\.

_Type:_ null or (submodule)

_Default:_

```nix
null
```

## hardware\.facter\.detection\.network\.interfaces\.default\.dev

Device /dev paths\.

_Type:_ list of absolute path

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.network\.interfaces\.default\.device

Facter device object\.

_Type:_ open submodule of raw value

## hardware\.facter\.detection\.network\.interfaces\.default\.model

Device model name\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.network\.interfaces\.default\.modules

Device driver kernel modules\.

_Type:_ list of string

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.network\.interfaces\.default\.name

Network interface name\.

_Type:_ string

## hardware\.facter\.detection\.network\.interfaces\.default\.pci

Device PCI id\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.network\.interfaces\.default\.sys

Device /sys path\.

_Type:_ null or absolute path

_Default:_

```nix
null
```

## hardware\.facter\.detection\.pointer\.enable

Whether the machine has a connected mouse\.

_Type:_ boolean

_Default:_

```nix
false
```

## hardware\.facter\.detection\.pointer\.mice

Machine pointer mice\.

_Type:_ submodule

_Default:_

```nix
{ }
```

## hardware\.facter\.detection\.pointer\.mice\.byDev

Mapping from /dev path to device\.

_Type:_ attribute set of (submodule)

_Default:_

```nix
{ }
```

## hardware\.facter\.detection\.pointer\.mice\.byDev\.\<name>\.dev

Device /dev paths\.

_Type:_ list of absolute path

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.pointer\.mice\.byDev\.\<name>\.device

Facter device object\.

_Type:_ open submodule of raw value

## hardware\.facter\.detection\.pointer\.mice\.byDev\.\<name>\.model

Device model name\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.pointer\.mice\.byDev\.\<name>\.modules

Device driver kernel modules\.

_Type:_ list of string

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.pointer\.mice\.byDev\.\<name>\.pci

Device PCI id\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.pointer\.mice\.byDev\.\<name>\.sys

Device /sys path\.

_Type:_ null or absolute path

_Default:_

```nix
null
```

## hardware\.facter\.detection\.pointer\.mice\.byModel

Devices sorted by model in descending alphabetical order\.

_Type:_ list of (submodule)

## hardware\.facter\.detection\.pointer\.mice\.byModel\.\*\.dev

Device /dev paths\.

_Type:_ list of absolute path

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.pointer\.mice\.byModel\.\*\.device

Facter device object\.

_Type:_ open submodule of raw value

## hardware\.facter\.detection\.pointer\.mice\.byModel\.\*\.model

Device model name\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.pointer\.mice\.byModel\.\*\.modules

Device driver kernel modules\.

_Type:_ list of string

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.pointer\.mice\.byModel\.\*\.pci

Device PCI id\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.pointer\.mice\.byModel\.\*\.sys

Device /sys path\.

_Type:_ null or absolute path

_Default:_

```nix
null
```

## hardware\.facter\.detection\.pointer\.mice\.byPci

Mapping from PCI id to device\.

_Type:_ attribute set of (submodule)

_Default:_

```nix
{ }
```

## hardware\.facter\.detection\.pointer\.mice\.byPci\.\<name>\.dev

Device /dev paths\.

_Type:_ list of absolute path

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.pointer\.mice\.byPci\.\<name>\.device

Facter device object\.

_Type:_ open submodule of raw value

## hardware\.facter\.detection\.pointer\.mice\.byPci\.\<name>\.model

Device model name\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.pointer\.mice\.byPci\.\<name>\.modules

Device driver kernel modules\.

_Type:_ list of string

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.pointer\.mice\.byPci\.\<name>\.pci

Device PCI id\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.pointer\.mice\.byPci\.\<name>\.sys

Device /sys path\.

_Type:_ null or absolute path

_Default:_

```nix
null
```

## hardware\.facter\.detection\.pointer\.mice\.bySys

Mapping from /sys path to device\.

_Type:_ attribute set of (submodule)

_Default:_

```nix
{ }
```

## hardware\.facter\.detection\.pointer\.mice\.bySys\.\<name>\.dev

Device /dev paths\.

_Type:_ list of absolute path

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.pointer\.mice\.bySys\.\<name>\.device

Facter device object\.

_Type:_ open submodule of raw value

## hardware\.facter\.detection\.pointer\.mice\.bySys\.\<name>\.model

Device model name\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.pointer\.mice\.bySys\.\<name>\.modules

Device driver kernel modules\.

_Type:_ list of string

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.pointer\.mice\.bySys\.\<name>\.pci

Device PCI id\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.pointer\.mice\.bySys\.\<name>\.sys

Device /sys path\.

_Type:_ null or absolute path

_Default:_

```nix
null
```

## hardware\.facter\.detection\.sound\.enable

Whether the machine has a sound card\.

_Type:_ boolean

_Default:_

```nix
false
```

## hardware\.facter\.detection\.sound\.cards

Machine sound cards\.

_Type:_ submodule

_Default:_

```nix
{ }
```

## hardware\.facter\.detection\.sound\.cards\.byDev

Mapping from /dev path to device\.

_Type:_ attribute set of (submodule)

_Default:_

```nix
{ }
```

## hardware\.facter\.detection\.sound\.cards\.byDev\.\<name>\.dev

Device /dev paths\.

_Type:_ list of absolute path

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.sound\.cards\.byDev\.\<name>\.device

Facter device object\.

_Type:_ open submodule of raw value

## hardware\.facter\.detection\.sound\.cards\.byDev\.\<name>\.model

Device model name\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.sound\.cards\.byDev\.\<name>\.modules

Device driver kernel modules\.

_Type:_ list of string

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.sound\.cards\.byDev\.\<name>\.pci

Device PCI id\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.sound\.cards\.byDev\.\<name>\.sys

Device /sys path\.

_Type:_ null or absolute path

_Default:_

```nix
null
```

## hardware\.facter\.detection\.sound\.cards\.byModel

Devices sorted by model in descending alphabetical order\.

_Type:_ list of (submodule)

## hardware\.facter\.detection\.sound\.cards\.byModel\.\*\.dev

Device /dev paths\.

_Type:_ list of absolute path

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.sound\.cards\.byModel\.\*\.device

Facter device object\.

_Type:_ open submodule of raw value

## hardware\.facter\.detection\.sound\.cards\.byModel\.\*\.model

Device model name\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.sound\.cards\.byModel\.\*\.modules

Device driver kernel modules\.

_Type:_ list of string

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.sound\.cards\.byModel\.\*\.pci

Device PCI id\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.sound\.cards\.byModel\.\*\.sys

Device /sys path\.

_Type:_ null or absolute path

_Default:_

```nix
null
```

## hardware\.facter\.detection\.sound\.cards\.byPci

Mapping from PCI id to device\.

_Type:_ attribute set of (submodule)

_Default:_

```nix
{ }
```

## hardware\.facter\.detection\.sound\.cards\.byPci\.\<name>\.dev

Device /dev paths\.

_Type:_ list of absolute path

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.sound\.cards\.byPci\.\<name>\.device

Facter device object\.

_Type:_ open submodule of raw value

## hardware\.facter\.detection\.sound\.cards\.byPci\.\<name>\.model

Device model name\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.sound\.cards\.byPci\.\<name>\.modules

Device driver kernel modules\.

_Type:_ list of string

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.sound\.cards\.byPci\.\<name>\.pci

Device PCI id\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.sound\.cards\.byPci\.\<name>\.sys

Device /sys path\.

_Type:_ null or absolute path

_Default:_

```nix
null
```

## hardware\.facter\.detection\.sound\.cards\.bySys

Mapping from /sys path to device\.

_Type:_ attribute set of (submodule)

_Default:_

```nix
{ }
```

## hardware\.facter\.detection\.sound\.cards\.bySys\.\<name>\.dev

Device /dev paths\.

_Type:_ list of absolute path

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.sound\.cards\.bySys\.\<name>\.device

Facter device object\.

_Type:_ open submodule of raw value

## hardware\.facter\.detection\.sound\.cards\.bySys\.\<name>\.model

Device model name\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.sound\.cards\.bySys\.\<name>\.modules

Device driver kernel modules\.

_Type:_ list of string

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.sound\.cards\.bySys\.\<name>\.pci

Device PCI id\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.sound\.cards\.bySys\.\<name>\.sys

Device /sys path\.

_Type:_ null or absolute path

_Default:_

```nix
null
```

## hardware\.facter\.detection\.system

Machine system\.

_Type:_ string

## hardware\.facter\.detection\.typer\.enable

Whether the machine has a connected keyboard\.

_Type:_ boolean

_Default:_

```nix
false
```

## hardware\.facter\.detection\.typer\.keyboards

Machine typer keyboards\.

_Type:_ submodule

_Default:_

```nix
{ }
```

## hardware\.facter\.detection\.typer\.keyboards\.byDev

Mapping from /dev path to device\.

_Type:_ attribute set of (submodule)

_Default:_

```nix
{ }
```

## hardware\.facter\.detection\.typer\.keyboards\.byDev\.\<name>\.dev

Device /dev paths\.

_Type:_ list of absolute path

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.typer\.keyboards\.byDev\.\<name>\.device

Facter device object\.

_Type:_ open submodule of raw value

## hardware\.facter\.detection\.typer\.keyboards\.byDev\.\<name>\.model

Device model name\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.typer\.keyboards\.byDev\.\<name>\.modules

Device driver kernel modules\.

_Type:_ list of string

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.typer\.keyboards\.byDev\.\<name>\.pci

Device PCI id\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.typer\.keyboards\.byDev\.\<name>\.sys

Device /sys path\.

_Type:_ null or absolute path

_Default:_

```nix
null
```

## hardware\.facter\.detection\.typer\.keyboards\.byModel

Devices sorted by model in descending alphabetical order\.

_Type:_ list of (submodule)

## hardware\.facter\.detection\.typer\.keyboards\.byModel\.\*\.dev

Device /dev paths\.

_Type:_ list of absolute path

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.typer\.keyboards\.byModel\.\*\.device

Facter device object\.

_Type:_ open submodule of raw value

## hardware\.facter\.detection\.typer\.keyboards\.byModel\.\*\.model

Device model name\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.typer\.keyboards\.byModel\.\*\.modules

Device driver kernel modules\.

_Type:_ list of string

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.typer\.keyboards\.byModel\.\*\.pci

Device PCI id\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.typer\.keyboards\.byModel\.\*\.sys

Device /sys path\.

_Type:_ null or absolute path

_Default:_

```nix
null
```

## hardware\.facter\.detection\.typer\.keyboards\.byPci

Mapping from PCI id to device\.

_Type:_ attribute set of (submodule)

_Default:_

```nix
{ }
```

## hardware\.facter\.detection\.typer\.keyboards\.byPci\.\<name>\.dev

Device /dev paths\.

_Type:_ list of absolute path

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.typer\.keyboards\.byPci\.\<name>\.device

Facter device object\.

_Type:_ open submodule of raw value

## hardware\.facter\.detection\.typer\.keyboards\.byPci\.\<name>\.model

Device model name\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.typer\.keyboards\.byPci\.\<name>\.modules

Device driver kernel modules\.

_Type:_ list of string

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.typer\.keyboards\.byPci\.\<name>\.pci

Device PCI id\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.typer\.keyboards\.byPci\.\<name>\.sys

Device /sys path\.

_Type:_ null or absolute path

_Default:_

```nix
null
```

## hardware\.facter\.detection\.typer\.keyboards\.bySys

Mapping from /sys path to device\.

_Type:_ attribute set of (submodule)

_Default:_

```nix
{ }
```

## hardware\.facter\.detection\.typer\.keyboards\.bySys\.\<name>\.dev

Device /dev paths\.

_Type:_ list of absolute path

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.typer\.keyboards\.bySys\.\<name>\.device

Facter device object\.

_Type:_ open submodule of raw value

## hardware\.facter\.detection\.typer\.keyboards\.bySys\.\<name>\.model

Device model name\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.typer\.keyboards\.bySys\.\<name>\.modules

Device driver kernel modules\.

_Type:_ list of string

_Default:_

```nix
[ ]
```

## hardware\.facter\.detection\.typer\.keyboards\.bySys\.\<name>\.pci

Device PCI id\.

_Type:_ null or string

_Default:_

```nix
null
```

## hardware\.facter\.detection\.typer\.keyboards\.bySys\.\<name>\.sys

Device /sys path\.

_Type:_ null or absolute path

_Default:_

```nix
null
```

## hardware\.facter\.detection\.version

Facter report version\.

_Type:_ unsigned integer, meaning >=0

_Default:_

```nix
999
```

## hardware\.facter\.detection\.virtualisation

Machine virtualisation\.

_Type:_ string

## hardware\.facter\.report

Facter report\.

_Type:_ raw value

_Default:_

```nix
{
  version = 999;
}
```
