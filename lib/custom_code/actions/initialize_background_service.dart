// Automatic Flutter imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '/custom_code/actions/index.dart';
import 'package:flutter_background_service/flutter_background_service.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async'; // Added for Timer

Future<void> initializeBackgroundService() async {
  final service = FlutterBackgroundService();
  await service.configure(
    androidConfiguration: AndroidConfiguration(
      onStart: _onStart, // Now accepts ServiceInstance
      autoStart: true,
      isForegroundMode: true,
    ),
    iosConfiguration: IosConfiguration(),
  );
  service.startService();
}

void _onStart(ServiceInstance service) async {
  // Added ServiceInstance parameter
  WidgetsFlutterBinding.ensureInitialized();
  final notifications = FlutterLocalNotificationsPlugin();

  await notifications.initialize(
    const InitializationSettings(
      android: AndroidInitializationSettings('@mipmap/ic_launcher'),
    ),
    onDidReceiveNotificationResponse: (details) async {
      final payload = details.payload;
      if (payload == 'show_overlay') {
        service.invoke('showOverlay'); // Trigger UI navigation via event
      }
    },
  );

  Timer.periodic(Duration(seconds: 10), (timer) async {
    final selectedApps = await _getSelectedApps();
    final currentApp = await _getCurrentApp();
    if (selectedApps.contains(currentApp)) {
      _startTimer(currentApp, notifications);
    }
  });
}

Future<List<String>> _getSelectedApps() async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getStringList('selectedApps') ?? [];
}

Future<String> _getCurrentApp() async {
  // Implement using platform channels or a package like `app_usage`
  return "com.example.app"; // Replace with actual logic
}

void _startTimer(
    String packageName, FlutterLocalNotificationsPlugin notifications) async {
  await Future.delayed(Duration(minutes: 2));
  _showFullScreenNotification(packageName, notifications);
}

void _showFullScreenNotification(
    String packageName, FlutterLocalNotificationsPlugin notifications) async {
  const AndroidNotificationDetails androidPlatformChannelSpecifics =
      AndroidNotificationDetails(
    'app_blocker',
    'App Blocker',
    importance: Importance.max,
    priority: Priority.high,
    fullScreenIntent: true,
  );
  const NotificationDetails platformChannelSpecifics =
      NotificationDetails(android: androidPlatformChannelSpecifics);
  await notifications.show(
    0,
    'Blocked App',
    'You cannot use $packageName anymore.',
    platformChannelSpecifics,
    payload: 'show_overlay', // Payload is now properly defined
  );
}
