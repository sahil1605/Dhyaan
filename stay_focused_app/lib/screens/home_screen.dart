import 'package:flutter/material.dart';
import '../models/app_usage.dart';
import '../widgets/usage_card.dart';

class HomeScreen extends StatelessWidget {
  final List<AppUsage> appUsages = [
    AppUsage(appName: 'Instagram', usageTime: 45),
    AppUsage(appName: 'YouTube', usageTime: 30),
    AppUsage(appName: 'Facebook', usageTime: 20),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stay Focused'),
      ),
      body: ListView.builder(
        itemCount: appUsages.length,
        itemBuilder: (context, index) {
          final appUsage = appUsages[index];
          return UsageCard(appUsage: appUsage);
        },
      ),
    );
  }
}
