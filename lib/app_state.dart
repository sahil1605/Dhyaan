import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<String> _selectedApps = [];
  List<String> get selectedApps => _selectedApps;
  set selectedApps(List<String> value) {
    _selectedApps = value;
  }

  void addToSelectedApps(String value) {
    selectedApps.add(value);
  }

  void removeFromSelectedApps(String value) {
    selectedApps.remove(value);
  }

  void removeAtIndexFromSelectedApps(int index) {
    selectedApps.removeAt(index);
  }

  void updateSelectedAppsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    selectedApps[index] = updateFn(_selectedApps[index]);
  }

  void insertAtIndexInSelectedApps(int index, String value) {
    selectedApps.insert(index, value);
  }
}
