import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'app_selection_page_widget.dart' show AppSelectionPageWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AppSelectionPageModel extends FlutterFlowModel<AppSelectionPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for searchBar widget.
  FocusNode? searchBarFocusNode1;
  TextEditingController? searchBarTextController1;
  String? Function(BuildContext, String?)? searchBarTextController1Validator;
  // State field(s) for searchBar widget.
  FocusNode? searchBarFocusNode2;
  TextEditingController? searchBarTextController2;
  String? Function(BuildContext, String?)? searchBarTextController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    searchBarFocusNode1?.dispose();
    searchBarTextController1?.dispose();

    searchBarFocusNode2?.dispose();
    searchBarTextController2?.dispose();
  }
}
