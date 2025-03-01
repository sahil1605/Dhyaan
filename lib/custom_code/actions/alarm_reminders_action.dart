// Automatic Flutter imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:permission_handler/permission_handler.dart'; // Import permission_handler package
import 'package:app_settings/app_settings.dart'; // Import app_settings package
import 'package:flutter/foundation.dart' show kIsWeb; // Import kIsWeb

Future<void> alarmRemindersAction(BuildContext context) async {
  try {
    // Show an alert dialog to explain why the permission is needed
    await _showPermissionExplanationDialog(context);

    // Handle notification permissions
    await _handleNotificationPermissions(context);
  } catch (e) {
    print("An error occurred while handling alarm reminders action: $e");
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("An unexpected error occurred. Please try again later."),
      ),
    );
  }
}

/// Displays an alert dialog explaining why alarms and reminders need to be enabled.
Future<void> _showPermissionExplanationDialog(BuildContext context) async {
  await showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Enable Alarms & Reminders"),
        content: Text(
          "Please enable 'Alarms & Reminders' for Dhyaan in the App Info settings to ensure proper functionality.",
        ),
        actions: <Widget>[
          TextButton(
            child: Text("Cancel"),
            onPressed: () {
              Navigator.of(context).pop(); // Close the dialog
            },
          ),
          TextButton(
            child: Text("Go to Alarm Settings"),
            onPressed: () async {
              Navigator.of(context).pop(); // Close the dialog
              try {
                // Open the Alarm settings page using AppSettings
                AppSettings.openAppSettings(type: AppSettingsType.alarm);
                print("Navigated to Alarm settings");
              } catch (e) {
                print("Failed to navigate to Alarm settings: $e");
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Failed to open Alarm settings."),
                  ),
                );
              }
            },
          ),
        ],
      );
    },
  );
}

/// Handles notification permissions and requests them if necessary.
Future<void> _handleNotificationPermissions(BuildContext context) async {
  final notificationStatus = await Permission.notification.status;

  if (notificationStatus.isGranted) {
    print("Notification permission is already granted.");
  } else {
    // Permission is not granted, request permission
    final requestResult = await Permission.notification.request();

    if (requestResult.isGranted) {
      print("Notification permission granted.");
    } else if (requestResult.isPermanentlyDenied) {
      // Permission permanently denied, show a message to the user
      print('Notification permission permanently denied.');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
              "Notification permission was permanently denied. Please enable it in the App Settings."),
          action: SnackBarAction(
            label: "Go to Settings",
            onPressed: () {
              AppSettings.openAppSettings();
            },
          ),
        ),
      );
    } else {
      // Permission denied, show a message to the user
      print('Notification permission denied.');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Notification permission was denied."),
        ),
      );
    }
  }
}
