// Automatic Flutter imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:app_settings/app_settings.dart'; // Import app_settings package

Future<void> checkBatteryOptimization(BuildContext context) async {
  print("checkBatteryOptimization function called"); // Debugging log

  try {
    // Show an alert dialog to match the UI in the image
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            "Stop optimizing battery usage?",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          content: Text(
            "Dhyaan will be able to run in the background. Its battery usage won't be restricted.",
          ),
          actions: <Widget>[
            TextButton(
              child: Text(
                "Deny",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                print("User denied battery optimization"); // Debugging log
                Navigator.of(context).pop(); // Close the dialog
              },
            ),
            TextButton(
              child: Text(
                "Allow",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onPressed: () async {
                print("User allowed battery optimization"); // Debugging log
                Navigator.of(context).pop(); // Close the dialog
                try {
                  // Open battery optimization settings using AppSettings
                  AppSettings.openAppSettings(
                      type: AppSettingsType.batteryOptimization);
                  print("Navigated to battery optimization settings");
                } catch (e) {
                  print(
                      "Failed to navigate to battery optimization settings: $e");
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content:
                          Text("Failed to open battery optimization settings."),
                    ),
                  );
                }
              },
            ),
          ],
        );
      },
    );
  } catch (e) {
    print("Failed to check battery optimization: $e");
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("An unexpected error occurred. Please try again later."),
      ),
    );
  }
}
