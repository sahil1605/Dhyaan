import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/permissions_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'o_b_permissions_page3_model.dart';
export 'o_b_permissions_page3_model.dart';

/// Page asking for permissions for microphone, battery optimization, display
/// overlay
class OBPermissionsPage3Widget extends StatefulWidget {
  const OBPermissionsPage3Widget({super.key});

  static String routeName = 'OBPermissionsPage3';
  static String routePath = '/oBPermissionsPage3';

  @override
  State<OBPermissionsPage3Widget> createState() =>
      _OBPermissionsPage3WidgetState();
}

class _OBPermissionsPage3WidgetState extends State<OBPermissionsPage3Widget> {
  late OBPermissionsPage3Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OBPermissionsPage3Model());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await actions.displayOverlayAction(
        context,
      );
    });

    _model.switchValue1 = false;
    _model.switchValue2 = false;
    _model.switchValue3 = false;
    _model.switchValue4 = false;
    _model.switchValue5 = false;
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
        backgroundColor: Colors.white,
        body: Container(
          height: 872.38,
          decoration: BoxDecoration(),
          child: SingleChildScrollView(
            primary: false,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          16.0, 16.0, 16.0, 16.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: Text(
                              'App Permissions',
                              style: FlutterFlowTheme.of(context)
                                  .headlineSmall
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: Color(0xFF101518),
                                    fontSize: 24.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12.0),
                                border: Border.all(
                                  color: Color(0xFFDFEDEC),
                                  width: 1.0,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12.0),
                                border: Border.all(
                                  color: Color(0xFFDFEDEC),
                                  width: 1.0,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(12.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Battery Optimization',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: Color(0xFF101518),
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Switch(
                                      value: _model.switchValue1!,
                                      onChanged: (newValue) async {
                                        safeSetState(() =>
                                            _model.switchValue1 = newValue!);
                                        if (newValue!) {
                                          await actions
                                              .checkBatteryOptimization(
                                            context,
                                          );
                                        }
                                      },
                                      activeColor: Color(0xFF06D5CD),
                                      activeTrackColor: Color(0xFF57636C),
                                      inactiveTrackColor: Color(0xFFE9ECEF),
                                      inactiveThumbColor: Color(0xFF57636C),
                                    ),
                                  ].divide(SizedBox(width: 12.0)),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12.0),
                                border: Border.all(
                                  color: Color(0xFFDFEDEC),
                                  width: 1.0,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(12.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Push Notifications',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: Color(0xFF101518),
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Switch(
                                      value: _model.switchValue2!,
                                      onChanged: (newValue) async {
                                        safeSetState(() =>
                                            _model.switchValue2 = newValue!);
                                        if (newValue!) {
                                          await requestPermission(
                                              notificationsPermission);
                                        }
                                      },
                                      activeColor: Color(0xFF06D5CD),
                                      activeTrackColor: Color(0xFF57636C),
                                      inactiveTrackColor: Color(0xFFE9EDF0),
                                      inactiveThumbColor: Color(0xFF57636C),
                                    ),
                                  ].divide(SizedBox(width: 12.0)),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12.0),
                                border: Border.all(
                                  color: Color(0xFFDFEDEC),
                                  width: 1.0,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(12.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Alarms & Reminders',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: Color(0xFF101518),
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Switch(
                                      value: _model.switchValue3!,
                                      onChanged: (newValue) async {
                                        safeSetState(() =>
                                            _model.switchValue3 = newValue!);
                                        if (newValue!) {
                                          await actions.alarmRemindersAction(
                                            context,
                                          );
                                        }
                                      },
                                      activeColor: Color(0xFF06D5CD),
                                      activeTrackColor: Color(0xFF57636C),
                                      inactiveTrackColor: Color(0xFFD1D4D7),
                                      inactiveThumbColor: Color(0xFF57636C),
                                    ),
                                  ].divide(SizedBox(width: 12.0)),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12.0),
                                border: Border.all(
                                  color: Color(0xFFDFEDEC),
                                  width: 1.0,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(12.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Usage Access',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: Color(0xFF101518),
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Switch(
                                      value: _model.switchValue4!,
                                      onChanged: (newValue) async {
                                        safeSetState(() =>
                                            _model.switchValue4 = newValue!);
                                        if (newValue!) {
                                          await actions.requestUsagePermission(
                                            context,
                                          );
                                        }
                                      },
                                      activeColor: Color(0xFF06D5CD),
                                      activeTrackColor: Color(0xFF57636C),
                                      inactiveTrackColor: Color(0xFFDFE4E9),
                                      inactiveThumbColor: Color(0xFF57636C),
                                    ),
                                  ].divide(SizedBox(width: 12.0)),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12.0),
                                border: Border.all(
                                  color: Color(0xFFDFEDEC),
                                  width: 1.0,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(12.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Display Overlay',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: Color(0xFF101518),
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Switch(
                                      value: _model.switchValue5!,
                                      onChanged: (newValue) async {
                                        safeSetState(() =>
                                            _model.switchValue5 = newValue!);
                                        if (newValue!) {
                                          await actions.displayOverlayAction(
                                            context,
                                          );
                                        }
                                      },
                                      activeColor: Color(0xFF06D5CD),
                                      activeTrackColor: Color(0xFF57636C),
                                      inactiveTrackColor: Color(0xFFEFF0F0),
                                      inactiveThumbColor: Color(0xFF57636C),
                                    ),
                                  ].divide(SizedBox(width: 12.0)),
                                ),
                              ),
                            ),
                          ),
                        ].divide(SizedBox(height: 16.0)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 9.0, 16.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(0.0),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 16.0, 16.0, 16.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              FFButtonWidget(
                                onPressed: () async {
                                  context.pushNamed(
                                      MeditationDashboardWidget.routeName);
                                },
                                text: 'Continue',
                                icon: Icon(
                                  Icons.arrow_forward_rounded,
                                  color: FlutterFlowTheme.of(context).info,
                                  size: 15.0,
                                ),
                                options: FFButtonOptions(
                                  width: double.infinity,
                                  height: 50.0,
                                  padding: EdgeInsets.all(8.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Alegreya Sans',
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        letterSpacing: 0.0,
                                      ),
                                  elevation: 0.0,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                              ),
                              Text(
                                'You can always change these settings later in your profile',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      fontFamily: 'Alegreya Sans',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ].divide(SizedBox(height: 16.0)),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                      alignment: AlignmentDirectional(0.0, 1.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 24.0, 0.0, 24.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: 12.0,
                                      height: 12.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFE5E7EB),
                                        borderRadius:
                                            BorderRadius.circular(6.0),
                                      ),
                                    ),
                                    Container(
                                      width: 12.0,
                                      height: 12.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFE5E7EB),
                                        borderRadius:
                                            BorderRadius.circular(6.0),
                                      ),
                                    ),
                                    Container(
                                      width: 12.0,
                                      height: 12.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF39D2C0),
                                        borderRadius:
                                            BorderRadius.circular(6.0),
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 8.0)),
                                ),
                              ],
                            ),
                          ].divide(SizedBox(height: 12.0)),
                        ),
                      ),
                    ),
                  ),
                ),
              ].divide(SizedBox(height: 24.0)),
            ),
          ),
        ),
      ),
    );
  }
}
