import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'music_meditation_page_model.dart';
export 'music_meditation_page_model.dart';

/// Create a simplr music Page one music will be played at time
class MusicMeditationPageWidget extends StatefulWidget {
  const MusicMeditationPageWidget({super.key});

  static String routeName = 'MusicMeditationPage';
  static String routePath = '/musicMeditationPage';

  @override
  State<MusicMeditationPageWidget> createState() =>
      _MusicMeditationPageWidgetState();
}

class _MusicMeditationPageWidgetState extends State<MusicMeditationPageWidget> {
  late MusicMeditationPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MusicMeditationPageModel());

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
        body: SingleChildScrollView(
          primary: false,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 320.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16.0),
                            child: Image.network(
                              '',
                              width: double.infinity,
                              height: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Midnight Rain',
                              style: FlutterFlowTheme.of(context)
                                  .headlineMedium
                                  .override(
                                    fontFamily: 'Urbanist',
                                    color: Color(0xFF101213),
                                    fontSize: 28.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                            Text(
                              'Taylor Swift',
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Manrope',
                                    color: Color(0xFF57636C),
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ].divide(SizedBox(height: 4.0)),
                        ),
                      ].divide(SizedBox(height: 12.0)),
                    ),
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
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '2:45',
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: 'Manrope',
                                    color: Color(0xFF57636C),
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                            Text(
                              '4:32',
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: 'Manrope',
                                    color: Color(0xFF57636C),
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                          ],
                        ),
                        Container(
                          width: double.infinity,
                          child: Slider(
                            activeColor: Color(0xFF9489F5),
                            inactiveColor: Color(0x33000000),
                            min: 0.0,
                            max: 100.0,
                            value: _model.sliderValue ??= 60.0,
                            onChanged: (newValue) {
                              newValue =
                                  double.parse(newValue.toStringAsFixed(4));
                              safeSetState(() => _model.sliderValue = newValue);
                            },
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  buttonSize: 40.0,
                                  fillColor: Colors.transparent,
                                  icon: Icon(
                                    Icons.shuffle_rounded,
                                    color: Color(0xFF57636C),
                                    size: 24.0,
                                  ),
                                  onPressed: () {
                                    print('IconButton pressed ...');
                                  },
                                ),
                                FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  buttonSize: 40.0,
                                  fillColor: Colors.transparent,
                                  icon: Icon(
                                    Icons.skip_previous_rounded,
                                    color: Color(0xFF101213),
                                    size: 24.0,
                                  ),
                                  onPressed: () {
                                    print('IconButton pressed ...');
                                  },
                                ),
                                FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 20.0,
                                  buttonSize: 40.0,
                                  fillColor: Color(0xFF9489F5),
                                  icon: Icon(
                                    Icons.pause_rounded,
                                    color: Colors.white,
                                    size: 24.0,
                                  ),
                                  onPressed: () {
                                    print('IconButton pressed ...');
                                  },
                                ),
                                FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  buttonSize: 40.0,
                                  fillColor: Colors.transparent,
                                  icon: Icon(
                                    Icons.skip_next_rounded,
                                    color: Color(0xFF101213),
                                    size: 24.0,
                                  ),
                                  onPressed: () {
                                    print('IconButton pressed ...');
                                  },
                                ),
                                FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  buttonSize: 40.0,
                                  fillColor: Colors.transparent,
                                  icon: Icon(
                                    Icons.repeat_rounded,
                                    color: Color(0xFF57636C),
                                    size: 24.0,
                                  ),
                                  onPressed: () {
                                    print('IconButton pressed ...');
                                  },
                                ),
                              ].divide(SizedBox(width: 12.0)),
                            ),
                            FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              buttonSize: 40.0,
                              fillColor: Colors.transparent,
                              icon: Icon(
                                Icons.playlist_play,
                                color: Color(0xFF101213),
                                size: 24.0,
                              ),
                              onPressed: () {
                                print('IconButton pressed ...');
                              },
                            ),
                          ],
                        ),
                      ].divide(SizedBox(height: 8.0)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: Container(
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
                ),
              ),
              Container(
                width: 60.0,
                height: 60.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primary,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4.0,
                      color: Color(0x33000000),
                      offset: Offset(
                        0.0,
                        2.0,
                      ),
                      spreadRadius: 0.0,
                    )
                  ],
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.edit_note_rounded,
                        color: FlutterFlowTheme.of(context).info,
                        size: 24.0,
                      ),
                    ],
                  ),
                ),
              ),
            ].divide(SizedBox(height: 24.0)),
          ),
        ),
      ),
    );
  }
}
