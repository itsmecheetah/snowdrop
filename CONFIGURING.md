# `topMargin` : int
Margin above the bar.

# `height` : int
Height of the bar.

# `exclusiveZoneOffset` : int
Offset the exclusive zone. A value of 0 will make the exclusive zone aligned with the bottom of the bar.

# `rounding` : real
Rounding (rectangle radius) of the bar and dropdowns.

# `borderWidth` : int
Border width of the bar and dropdowns.

# `moduleSpacing` : real
Spacing between each bar module.

# `moduleSize` : int
Size of module contents.

# `colors` : JsonObject
## `background` : string
Background color of the bar and dropdowns.

## `border` : string
Color of the borders for the bar and dropdowns.

## `text` : string
Color of all module text.

## `textCritical` : string
Color for module text when indicating a critical value (i.e. low battery)

# `modules` : JsonObject
## `icon` : JsonObject
### `enabled` : bool
Whether the icon module is enabled.

### `sizeOffset` : int
Offset the size of the image. Useful if your source image is small.

### `selection` : string
Which image to select. The icon folder contains nixos and arch by default, but custom images can be added and their name can be used in this option to select them.

## `clock` : JsonObject
### `enabled` : bool
Whether the clock module is enabled.

### `format` : string
How to format the clock. See [Qt's date/time formatting](https://doc.qt.io/qt-6/qml-qtqml-qt.html#formatDateTime-method) for expressions and further information.

## `connectivity` : JsonObject
### `enabled` : bool
Whether the connectivity module is enabled.

## `battery` : JsonObject
### `enabled` : bool
Whether the battery module is enabled.
> [!WARNING]
> This module requires the upower service to be installed.

### `criticalThreshold` : real
The percentage at which the module should be displayed with the critical color.
