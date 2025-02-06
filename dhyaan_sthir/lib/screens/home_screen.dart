import 'package:flutter/material.dart';
import '../services/notification__service.dart';

class HomeScreen extends StatelessWidget {
  final NotificationService _notificationService = NotificationService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stay Focused'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Show a simple notification
                _notificationService.showNotification(
                  title: 'Time Limit Exceeded',
                  body: 'You have exceeded your daily app usage limit!',
                );
              },
              child: Text('Show Notification'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Schedule a notification for 10 seconds from now
                final scheduledTime = DateTime.now().add(Duration(seconds: 10));
                _notificationService.scheduleNotification(
                  title: 'Focus Mode Reminder',
                  body: 'It’s time to focus!',
                  scheduledTime: scheduledTime,
                );
              },
              child: Text('Schedule Notification'),
            ),
          ],
        ),
      ),
    );
  }
}
