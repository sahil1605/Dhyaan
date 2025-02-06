import 'package:flutter/material.dart';
import '../models/app_usage.dart';

class UsageCard extends StatelessWidget {
  final AppUsage appUsage;

  UsageCard({required this.appUsage});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: ListTile(
        title: Text(appUsage.appName),
        subtitle: Text('${appUsage.usageTime} minutes'),
        trailing: Icon(Icons.timer),
      ),
    );
  }
}
