import 'package:flutter/material.dart';

class TellMeAlertPage extends StatefulWidget {
  @override
  _TellMeAlertPageState createState() => _TellMeAlertPageState();
}

class _TellMeAlertPageState extends State<TellMeAlertPage> {
  String log = "log";

  setLog(String message) {
    setState(() {
      log = message;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TellMeAlert demo"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () => TellMeAlert(
                context: context,
                title: "Lorem ipsum title",
                content:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                onConfirm: () => setLog("Default confirmed"),
              ),
              child: Text("Default alert"),
            ),
            TextButton(
              onPressed: () => TellMeAlert(
                context: context,
                iconColor: TellMeColors.green_500,
                confirmButtonColor: TellMeColors.green_500,
                cancelButtonColor: TellMeColors.green_300,
                cancelTextStyle: TextStyle(color: TellMeColors.white_100),
                title: "Lorem ipsum title",
                content:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                onConfirm: () => setLog("Custom color confirmed"),
              ),
              child: Text("Custom color"),
            ),
            TextButton(
              onPressed: () => TellMeAlert(
                context: context,
                borderRadius: 30,
                shadow: true,
                iconColor: TellMeColors.red_500,
                confirmButtonColor: TellMeColors.red_500,
                title: "Lorem ipsum title",
                content:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                onConfirm: () => setLog("Border radius confirmed"),
              ),
              child: Text("Border with shadow radius"),
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
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                onConfirm: () => setLog("Aligned confirmed"),
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
                onConfirm: () => setLog("Disabled confirmed"),
              ),
              child: Text("Disabled element"),
            ),
            TextButton(
              onPressed: () => TellMeAlert(
                context: context,
                alignment: Alignment.bottomCenter,
                borderRadius: 15,
                showContent: false,
                showIcon: false,
                confirmButtonColor: TellMeColors.orange_500,
                title: "Lorem ipsum title",
                titleStyle: TextStyle(color: TellMeColors.orange_500),
                cancelTextStyle: TextStyle(color: TellMeColors.orange_500),
                confirmTextStyle: TextStyle(color: TellMeColors.white_100),
                cancelButtonText: "İptal",
                confirmButtonText: "Onay",
                onConfirm: () => setLog("Custom text style confirmed"),
              ),
              child: Text("Custom text style element"),
            ),
            TextButton(
              onPressed: () => TellMeAlert(
                context: context,
                padding: const EdgeInsets.all(70),
                borderRadius: 30,
                showCancelButton: false,
                showContent: false,
                showConfirmButton: false,
                showTitle: false,
                icon: Icons.recommend,
                iconColor: TellMeColors.primary_500,
                onConfirm: () => setLog("Custom icon with padding confirmed"),
              ),
              child: Text("Custom icon with padding element"),
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
                onConfirm: () => setLog("Custom widget confirmed"),
              ),
              child: Text("Custom widget element"),
            ),
            Divider(
              thickness: 5,
            ),
            Text(log)
          ],
        ),
      ),
    );
  }
}
