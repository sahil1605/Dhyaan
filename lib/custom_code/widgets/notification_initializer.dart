// Automatic Flutter imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationInitializer extends StatefulWidget {
  const NotificationInitializer({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<NotificationInitializer> createState() =>
      _NotificationInitializerState();
}

class _NotificationInitializerState extends State<NotificationInitializer> {
  @override
  void initState() {
    super.initState();
    _initializeNotifications();
  }

  // Initialize notifications
  void _initializeNotifications() {
    FlutterLocalNotificationsPlugin().initialize(
      const InitializationSettings(
        android: AndroidInitializationSettings('@mipmap/ic_launcher'),
      ),
      onDidReceiveNotificationResponse: (details) async {
        final payload = details.payload;
        if (payload != null) {
          // Trigger navigation using Flutter's context
          handleNotificationTap(payload);
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      // This widget is invisible but ensures it occupies space if needed
    );
  }
}
