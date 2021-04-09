
# tellme_alert
This package helps you to create color palette as horizontal list. Able to detech which color picked and returns it.

<img src="https://raw.githubusercontent.com/TellMeCorp/tellme-alert/main/example/images/Screenshot_1617999487.png?token=AFPPHGPUY2FHB3Z4NED6RH3APHY5Y" width = 150>
<img src="https://raw.githubusercontent.com/TellMeCorp/tellme-alert/main/example/images/Screenshot_1617999541.png?token=AFPPHGONLNCRS6OU2ZB2RXLAPHZE4" width = 150>
<img src="https://raw.githubusercontent.com/TellMeCorp/tellme-alert/main/example/images/Screenshot_1617999546.png?token=AFPPHGOGCHBPEQ7IB6INY7DAPHZBY" width = 150>
<img src="https://raw.githubusercontent.com/TellMeCorp/tellme-alert/main/example/images/Screenshot_1617999550.png?token=AFPPHGPUZM7S7L5YJR5OPW3APHZGO" width = 150>
<img src="https://raw.githubusercontent.com/TellMeCorp/tellme-alert/main/example/images/Screenshot_1617999553.png?token=AFPPHGLTXJOXNB72MMA6NY3APHZTK" width = 150>
<img src="https://raw.githubusercontent.com/TellMeCorp/tellme-alert/main/example/images/Screenshot_1617999556.png?token=AFPPHGJAQ2QKBFOB23BXYIDAPHZNW" width = 150>
<img src="https://raw.githubusercontent.com/TellMeCorp/tellme-alert/main/example/images/Screenshot_1617999558.png?token=AFPPHGOKOMANKJAMQWATCB3APHZLC" width = 150>



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
TextButton(
    onPressed: () => TellMeAlert(
    context: context,
    padding: const EdgeInsets.all(70),
    child: Container(
        color: Colors.amber,
        child: IconButton(
            icon: Icon(Icons.ac_unit),
            onPressed: () => Navigator.pop(context)),
    ),
    borderRadius: 30,
    showCancelButton: false,
    showContent: false,
    showConfirmButton: false,
    showTitle: false,
    showIcon: false,
    onConfirm: () => print("Custom widget confirmed"),
    ),
    child: Text("Custom widget element"),
),
```