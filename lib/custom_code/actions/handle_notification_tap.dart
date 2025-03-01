// Automatic Flutter imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<void> handleNotificationTap(String? payload) async {
  if (payload == 'show_overlay') {
    // Use Flutter's navigation system
    FFAppState().context?.go('/OverlayScreen'); // Ensure this route exists
  }
}
