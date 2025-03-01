import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'box_breathing_page_model.dart';
export 'box_breathing_page_model.dart';

/// Create a box breathing timer on centre
class BoxBreathingPageWidget extends StatefulWidget {
  const BoxBreathingPageWidget({
    super.key,
    required this.inhale1,
    required this.hold1,
    required this.exhale,
    required this.hold2,
    required this.cycles,
  });

  final int? inhale1;
  final int? hold1;
  final int? exhale;
  final int? hold2;
  final int? cycles;

  static String routeName = 'BoxBreathingPage';
  static String routePath = '/boxBreathingPage';

  @override
  State<BoxBreathingPageWidget> createState() => _BoxBreathingPageWidgetState();
}

class _BoxBreathingPageWidgetState extends State<BoxBreathingPageWidget>
    with TickerProviderStateMixin {
  late BoxBreathingPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BoxBreathingPageModel());

    animationsMap.addAll({
      'circleImageOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        applyInitialState: true,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.linear,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(-100.0, -100.0),
            end: Offset(100.0, -100.0),
          ),
          MoveEffect(
            curve: Curves.linear,
            delay: 600.0.ms,
            duration: 600.0.ms,
            begin: Offset(100.0, -100.0),
            end: Offset(100.0, 100.0),
          ),
          MoveEffect(
            curve: Curves.linear,
            delay: 1200.0.ms,
            duration: 600.0.ms,
            begin: Offset(100.0, 100.0),
            end: Offset(-100.0, 100.0),
          ),
          MoveEffect(
            curve: Curves.linear,
            delay: 1800.0.ms,
            duration: 600.0.ms,
            begin: Offset(-100.0, 100.0),
            end: Offset(-100.0, -100.0),
          ),
        ],
      ),
      'circleImageOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.linear,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(-100.0, -100.0),
            end: Offset(100.0, -100.0),
          ),
          MoveEffect(
            curve: Curves.linear,
            delay: 600.0.ms,
            duration: 600.0.ms,
            begin: Offset(100.0, -100.0),
            end: Offset(100.0, 100.0),
          ),
          MoveEffect(
            curve: Curves.linear,
            delay: 1200.0.ms,
            duration: 600.0.ms,
            begin: Offset(100.0, 100.0),
            end: Offset(-100.0, 100.0),
          ),
          MoveEffect(
            curve: Curves.linear,
            delay: 1800.0.ms,
            duration: 600.0.ms,
            begin: Offset(-100.0, 100.0),
            end: Offset(-100.0, -100.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

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
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Color(0x00060606),
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            fillColor: FlutterFlowTheme.of(context).secondaryBackground,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Color(0xFF0C0C0C),
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          actions: [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Container(
          height: 1000.0,
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
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 16.0, 16.0, 16.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Breathe with the box',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: Color(0xFF15161E),
                                      fontSize: 22.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              Container(
                                width: 215.0,
                                height: 215.0,
                                child: Stack(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  children: [
                                    Container(
                                      width: 200.0,
                                      height: 200.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFCFCFF),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .accent1,
                                          width: 3.0,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 16.0, 16.0, 16.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Inhale',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .titleLarge
                                                  .override(
                                                    fontFamily: 'Outfit',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondary,
                                                    fontSize: 22.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, -1.0),
                                      child: Container(
                                        width: 30.0,
                                        height: 30.0,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.network(
                                          'https://picsum.photos/seed/571/600',
                                          fit: BoxFit.cover,
                                        ),
                                      )
                                          .animateOnPageLoad(animationsMap[
                                              'circleImageOnPageLoadAnimation']!)
                                          .animateOnActionTrigger(
                                            animationsMap[
                                                'circleImageOnActionTriggerAnimation']!,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '4',
                                    style: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .override(
                                          fontFamily: 'Outfit',
                                          color: Color(0xFF6F61EF),
                                          fontSize: 24.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                  Text(
                                    'cycle',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Plus Jakarta Sans',
                                          color: Color(0xFF15161E),
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ].divide(SizedBox(width: 16.0)),
                              ),
                            ].divide(SizedBox(height: 24.0)),
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
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 16.0, 16.0, 16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 64.0,
                                  height: 64.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF6F61EF),
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
                                    borderRadius: BorderRadius.circular(32.0),
                                  ),
                                  child: FlutterFlowIconButton(
                                    borderColor: Colors.transparent,
                                    buttonSize: 64.0,
                                    icon: Icon(
                                      Icons.play_arrow_rounded,
                                      color: Colors.white,
                                      size: 32.0,
                                    ),
                                    onPressed: () async {
                                      if (animationsMap[
                                              'circleImageOnActionTriggerAnimation'] !=
                                          null) {
                                        await animationsMap[
                                                'circleImageOnActionTriggerAnimation']!
                                            .controller
                                            .forward(from: 0.0);
                                      }
                                    },
                                  ),
                                ),
                                Container(
                                  width: 64.0,
                                  height: 64.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF6F61EF),
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
                                    borderRadius: BorderRadius.circular(32.0),
                                  ),
                                  child: FlutterFlowIconButton(
                                    borderColor: Colors.transparent,
                                    buttonSize: 64.0,
                                    icon: Icon(
                                      Icons.refresh_rounded,
                                      color: Colors.white,
                                      size: 32.0,
                                    ),
                                    onPressed: () {
                                      print('IconButton pressed ...');
                                    },
                                  ),
                                ),
                                Container(
                                  width: 64.0,
                                  height: 64.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF6F61EF),
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
                                    borderRadius: BorderRadius.circular(32.0),
                                  ),
                                  child: FlutterFlowIconButton(
                                    borderColor: Colors.transparent,
                                    buttonSize: 64.0,
                                    icon: Icon(
                                      Icons.edit_note_sharp,
                                      color: Colors.white,
                                      size: 32.0,
                                    ),
                                    onPressed: () async {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ),
                              ].divide(SizedBox(width: 16.0)),
                            ),
                            Text(
                              'Tap to begin your breathing exercise',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: Color(0xFF606A85),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                          ].divide(SizedBox(height: 24.0)),
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
