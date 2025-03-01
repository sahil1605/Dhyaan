// Automatic Flutter imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter/services.dart';

import 'package:android_intent_plus/android_intent.dart'; // Import android_intent_plus package

Future<void> displayOverlayAction(BuildContext context) async {
  // Show an alert dialog to explain why the permission is needed
  await showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Enable Dhyaan to Display Overlay"),
        content: Text(
            "Please enable the 'Display Over Other Apps' permission for Dhyaan in the settings."),
        actions: <Widget>[
          TextButton(
            child: Text("OK"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );

  // Navigate to the "Display Over Other Apps" settings
  final AndroidIntent intent = AndroidIntent(
    action: 'android.settings.action.MANAGE_OVERLAY_PERMISSION',
    data: 'package:${await getPackageName()}',
  );
  await intent.launch();
}

// Helper function to get the app's package name
Future<String> getPackageName() async {
  const platform = MethodChannel('app_info_channel');
  try {
    final String packageName = await platform.invokeMethod('getPackageName');
    return packageName;
  } catch (e) {
    print("Failed to get package name: $e");
    return '';
  }
}
