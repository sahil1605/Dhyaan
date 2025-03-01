import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'note_section_model.dart';
export 'note_section_model.dart';

/// Create a floating note section where you can type
class NoteSectionWidget extends StatefulWidget {
  const NoteSectionWidget({super.key});

  @override
  State<NoteSectionWidget> createState() => _NoteSectionWidgetState();
}

class _NoteSectionWidgetState extends State<NoteSectionWidget> {
  late NoteSectionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NoteSectionModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: [
            BoxShadow(
              blurRadius: 3.0,
              color: Color(0x1A57636C),
              offset: Offset(
                0.0,
                2.0,
              ),
              spreadRadius: 0.0,
            )
          ],
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).alternate,
            width: 1.0,
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Quick Note',
                    style: FlutterFlowTheme.of(context).labelLarge.override(
                          fontFamily: 'Alegreya Sans',
                          color: FlutterFlowTheme.of(context).primary,
                          letterSpacing: 0.0,
                        ),
                  ),
                  FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    buttonSize: 36.0,
                    fillColor: Colors.transparent,
                    icon: Icon(
                      Icons.edit_rounded,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 20.0,
                    ),
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
                  ),
                ],
              ),
              Expanded(
                child: TextFormField(
                  controller: _model.textController,
                  focusNode: _model.textFieldFocusNode,
                  autofocus: false,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Type your note here...',
                    hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Alegreya Sans',
                          letterSpacing: 0.0,
                        ),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    focusedErrorBorder: InputBorder.none,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Alegreya Sans',
                        letterSpacing: 0.0,
                      ),
                  maxLines: 8,
                  minLines: 4,
                  validator:
                      _model.textControllerValidator.asValidator(context),
                ),
              ),
            ].divide(SizedBox(height: 12.0)),
          ),
        ),
      ),
    );
  }
}
