import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'overlay_screen_model.dart';
export 'overlay_screen_model.dart';

class OverlayScreenWidget extends StatefulWidget {
  const OverlayScreenWidget({super.key});

  static String routeName = 'OverlayScreen';
  static String routePath = '/overlayScreen';

  @override
  State<OverlayScreenWidget> createState() => _OverlayScreenWidgetState();
}

class _OverlayScreenWidgetState extends State<OverlayScreenWidget> {
  late OverlayScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OverlayScreenModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Container(
            width: 1000.0,
            height: 1000.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Text(
              'You cannot watch this app',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).titleSmall.override(
                    fontFamily: 'Alegreya Sans',
                    color: Color(0xFF080000),
                    letterSpacing: 0.0,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
