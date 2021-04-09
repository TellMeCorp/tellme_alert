
# tellme_alert
This package helps you to create color palette as horizontal list. Able to detech which color picked and returns it.

<img src="url" width = 300>
<img src="url" width = 300>
<img src="url" width = 300>
<img src="url" width = 300>


## Install

### 1. Depend on it
Add this to your package's pubspec.yaml file:

```yaml
dependencies:
	tellme_alert:: <CurrentVersion>
```

### 2. Install it

You can install packages from the command line:  

with Flutter:
```shell
$ flutter pub get
```

Alternatively, your editor might support `flutter pub get`. Check the docs for your editor to learn more.

### 3. Import it

Now in your Dart code, you can use:

```dart
import  'package:tellme_alert/tellme_alert.dart';
```

## Example

  
```dart
TextButton(
    onPressed: () => TellMeAlert(
    context: context,
    title: "Lorem ipsum title",
    content:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    onConfirm: () => print("Default confirmed"),
    ),
    child: Text("Default alert"),
),
TextButton(
    onPressed: () => TellMeAlert(
    context: context,
    alignment: Alignment.topCenter,
    borderRadius: 10,
    iconColor: TellMeColors.red_500,
    confirmButtonColor: TellMeColors.red_500,
    title: "Lorem ipsum title",
    content:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    onConfirm: () => print("Aligned confirmed"),
    ),
    child: Text("Aligned"),
),
TextButton(
    onPressed: () => TellMeAlert(
    context: context,
    alignment: Alignment.bottomCenter,
    borderRadius: 15,
    showCancelButton: false,
    showContent: false,
    showIcon: false,
    iconColor: TellMeColors.blue_500,
    confirmButtonColor: TellMeColors.blue_500,
    title: "Lorem ipsum title",
    onConfirm: () => print("Disabled confirmed"),
    ),
    child: Text("Disabled element"),
),
```