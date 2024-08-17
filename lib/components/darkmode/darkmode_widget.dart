import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'darkmode_model.dart';
export 'darkmode_model.dart';

class DarkmodeWidget extends StatefulWidget {
  const DarkmodeWidget({super.key});

  @override
  State<DarkmodeWidget> createState() => _DarkmodeWidgetState();
}

class _DarkmodeWidgetState extends State<DarkmodeWidget> {
  late DarkmodeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DarkmodeModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: Theme.of(context).brightness == Brightness.light,
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
        child: FFButtonWidget(
          onPressed: () async {
            setDarkModeSetting(context, ThemeMode.system);
          },
          text: '',
          icon: Icon(
            Icons.dark_mode_outlined,
            color: FlutterFlowTheme.of(context).secondaryText,
            size: 30.0,
          ),
          options: FFButtonOptions(
            width: 30.0,
            height: 30.0,
            padding: const EdgeInsets.all(8.0),
            iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
            color: const Color(0x00FFFFFF),
            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                  fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                  color: Colors.white,
                  letterSpacing: 0.0,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).titleSmallFamily),
                ),
            elevation: 0.0,
            borderSide: const BorderSide(
              width: 0.0,
            ),
            borderRadius: BorderRadius.circular(0.0),
          ),
        ),
      ),
    );
  }
}
