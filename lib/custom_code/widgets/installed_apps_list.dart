// Automatic Flutter imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:device_apps/device_apps.dart'; // Import the device_apps package

class InstalledAppsList extends StatefulWidget {
  const InstalledAppsList({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<InstalledAppsList> createState() => _InstalledAppsListState();
}

class _InstalledAppsListState extends State<InstalledAppsList> {
  List<Application> _installedApps = [];
  Set<String> _selectedApps = {}; // Temporary tracking of selected apps

  @override
  void initState() {
    super.initState();
    _fetchInstalledApps();
    _loadSelectedApps(); // Load selected apps from app state
  }

  // Fetch installed apps
  Future<void> _fetchInstalledApps() async {
    final apps = await DeviceApps.getInstalledApplications(
      includeAppIcons: true,
      includeSystemApps: true,
      onlyAppsWithLaunchIntent: true,
    );
    setState(() {
      _installedApps = apps;
    });
  }

  // Load selected apps from app state
  void _loadSelectedApps() {
    final selectedApps = FFAppState()
        .selectedApps; // Get app state variable <button class="citation-flag" data-index="3">
    setState(() {
      _selectedApps = selectedApps.toSet();
    });
  }

  // Save selected apps to app state
  void _saveSelectedApps() {
    FFAppState().update(() {
      FFAppState().selectedApps = _selectedApps
          .toList(); // Update app state variable <button class="citation-flag" data-index="3">
    });
  }

  // Toggle app selection
  void _toggleAppSelection(String packageName) {
    setState(() {
      if (_selectedApps.contains(packageName)) {
        _selectedApps.remove(packageName);
      } else {
        _selectedApps.add(packageName);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: _installedApps.length,
            itemBuilder: (context, index) {
              final app = _installedApps[index];
              return ListTile(
                leading: Checkbox(
                  value:
                      _selectedApps.contains(app.packageName), // Checkbox state
                  onChanged: (selected) => _toggleAppSelection(app.packageName),
                ),
                title: Text(app.appName), // Display app name
                subtitle: Text(app.packageName), // Display package name
                trailing: app is ApplicationWithIcon
                    ? CircleAvatar(
                        backgroundImage:
                            MemoryImage(app.icon), // Display app icon
                      )
                    : null,
              );
            },
          ),
        ),
        ElevatedButton(
          onPressed: () {
            _saveSelectedApps(); // Save selections to app state
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Saved ${_selectedApps.length} apps')),
            );
          },
          child: Text('Save Selected Apps'),
        ),
      ],
    );
  }
}
