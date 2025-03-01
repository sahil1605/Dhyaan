// Automatic Flutter imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter/services.dart'; // Add this import

class OverlayScreen extends StatefulWidget {
  const OverlayScreen({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<OverlayScreen> createState() => _OverlayScreenState();
}

class _OverlayScreenState extends State<OverlayScreen> {
  @override
  void initState() {
    super.initState();
    _closeAppAfterDelay();
  }

  // Close the app after 5 seconds
  void _closeAppAfterDelay() {
    Future.delayed(Duration(seconds: 5), () {
      SystemNavigator
          .pop(); // Close the app programmatically <button class="citation-flag" data-index="4">
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "RESTRICTED APP DETECTED",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              "You cannot use this app anymore.",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            SizedBox(height: 40),
            CircularProgressIndicator(
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
