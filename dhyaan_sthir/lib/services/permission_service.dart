import 'package:flutter/services.dart';

class PermissionService {
  static const MethodChannel _channel = MethodChannel('usage_stats');

  Future<void> requestUsageStatsPermission() async {
    try {
      await _channel.invokeMethod('requestUsageStatsPermission');
    } on PlatformException catch (e) {
      print("Failed to request Usage Stats permission: '${e.message}'.");
    }
  }

  Future<bool> isUsageStatsPermissionGranted() async {
    try {
      final bool hasPermission =
          await _channel.invokeMethod('isUsageStatsPermissionGranted');
      return hasPermission;
    } on PlatformException catch (e) {
      print("Failed to check Usage Stats permission: '${e.message}'.");
      return false;
    }
  }
}
