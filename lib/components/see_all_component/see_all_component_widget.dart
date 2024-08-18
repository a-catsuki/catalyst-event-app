import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'see_all_component_model.dart';
export 'see_all_component_model.dart';

class SeeAllComponentWidget extends StatefulWidget {
  const SeeAllComponentWidget({super.key});

  @override
  State<SeeAllComponentWidget> createState() => _SeeAllComponentWidgetState();
}

class _SeeAllComponentWidgetState extends State<SeeAllComponentWidget> {
  late SeeAllComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SeeAllComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 15.0, 0.0),
      child: FFButtonWidget(
        onPressed: () async {
          context.pushNamed('ResultPage');
        },
        text: 'see all',
        options: FFButtonOptions(
          width: 80.0,
          height: 40.0,
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
          iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
          color: const Color(0x00FFFFFF),
          textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                color: FlutterFlowTheme.of(context).primaryText,
                letterSpacing: 0.0,
                decoration: TextDecoration.underline,
                useGoogleFonts: GoogleFonts.asMap()
                    .containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
              ),
          elevation: 0.0,
          borderSide: const BorderSide(
            width: 0.0,
          ),
          borderRadius: BorderRadius.circular(0.0),
        ),
      ),
    );
  }
}
