import 'package:flutter/material.dart';
import '../models/app_usage.dart'; // Import the AppUsage model
import '../widgets/usage_card.dart'; // Import the UsageCard widget
import '../services/permission_service.dart'; // Import the PermissionService

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PermissionService _permissionService = PermissionService();
  bool _hasUsageStatsPermission = false;

  // List of app usages (dummy data)
  final List<AppUsage> appUsages = [
    AppUsage(appName: 'Instagram', usageTime: 45),
    AppUsage(appName: 'YouTube', usageTime: 30),
    AppUsage(appName: 'Facebook', usageTime: 20),
  ];

  @override
  void initState() {
    super.initState();
    _checkUsageStatsPermission();
  }

  // Check if UsageStats permission is granted
  Future<void> _checkUsageStatsPermission() async {
    final bool hasPermission =
        await _permissionService.isUsageStatsPermissionGranted();
    setState(() {
      _hasUsageStatsPermission = hasPermission;
    });
  }

  // Request UsageStats permission
  Future<void> _requestUsageStatsPermission() async {
    await _permissionService.requestUsageStatsPermission();
    _checkUsageStatsPermission(); // Re-check after requesting permission
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stay Focused'),
      ),
      body: _hasUsageStatsPermission
          ? ListView.builder(
              itemCount: appUsages.length,
              itemBuilder: (context, index) {
                final appUsage = appUsages[index];
                return UsageCard(appUsage: appUsage);
              },
            )
          : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Usage Stats Permission Not Granted.",
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _requestUsageStatsPermission,
                    child: Text("Request Usage Stats Permission"),
                  ),
                ],
              ),
            ),
    );
  }
}
