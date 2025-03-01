// Automatic Flutter imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:permission_handler/permission_handler.dart';
import 'package:android_intent_plus/android_intent.dart';

Future<void> requestUsagePermission(BuildContext context) async {
  // Check if the app has USAGE_STATS permission
  final bool hasUsageAccess = await _checkUsageAccess();

  if (!hasUsageAccess) {
    // Show an alert dialog to explain why the permission is needed
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Enable Usage Data Access"),
          content: Text(
            "Please enable 'Usage Data Access' for this app in the settings to allow us to track app usage.",
          ),
          actions: <Widget>[
            TextButton(
              child: Text("Cancel"),
              onPressed: () {
                Navigator.of(context).pop(); // Removed 'await' here
              },
            ),
            TextButton(
              child: Text("Go to Settings"),
              onPressed: () async {
                Navigator.of(context).pop(); // Removed 'await' here
                // Navigate to Usage Access settings
                final intent = AndroidIntent(
                  action: 'android.settings.USAGE_ACCESS_SETTINGS',
                );
                await intent.launch(); // Open settings
              },
            ),
          ],
        );
      },
    );
  } else {
    // Permission already granted
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Usage access is already granted!')),
    );
  }
}

// Check if the app has USAGE_STATS permission using platform channels
Future<bool> _checkUsageAccess() async {
  const platform =
      MethodChannel('com.example.your_project_name/usage_permission');
  try {
    final bool hasPermission = await platform.invokeMethod('hasUsageAccess');
    return hasPermission;
  } catch (e) {
    return false;
  }
}
