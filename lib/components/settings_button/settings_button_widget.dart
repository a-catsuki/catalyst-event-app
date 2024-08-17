import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'settings_button_model.dart';
export 'settings_button_model.dart';

class SettingsButtonWidget extends StatefulWidget {
  const SettingsButtonWidget({super.key});

  @override
  State<SettingsButtonWidget> createState() => _SettingsButtonWidgetState();
}

class _SettingsButtonWidgetState extends State<SettingsButtonWidget> {
  late SettingsButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SettingsButtonModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(1.0, -1.0),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 20.0, 0.0),
        child: FFButtonWidget(
          onPressed: () async {
            context.pushNamed('AccountSettings');
          },
          text: 'settings',
          options: FFButtonOptions(
            height: 40.0,
            padding: const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
            iconPadding: const EdgeInsets.all(0.0),
            color: FlutterFlowTheme.of(context).secondary,
            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                  fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w500,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).titleSmallFamily),
                ),
            elevation: 3.0,
            borderSide: const BorderSide(
              color: Colors.transparent,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(17.0),
          ),
        ),
      ),
    );
  }
}
