import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'chat_thread_update_me_model.dart';
export 'chat_thread_update_me_model.dart';

class ChatThreadUpdateMeWidget extends StatefulWidget {
  const ChatThreadUpdateMeWidget({
    super.key,
    required this.text,
    required this.time,
    required this.user,
  });

  final String? text;
  final DateTime? time;
  final String? user;

  @override
  State<ChatThreadUpdateMeWidget> createState() =>
      _ChatThreadUpdateMeWidgetState();
}

class _ChatThreadUpdateMeWidgetState extends State<ChatThreadUpdateMeWidget> {
  late ChatThreadUpdateMeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatThreadUpdateMeModel());

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
      padding: const EdgeInsetsDirectional.fromSTEB(40.0, 12.0, 12.0, 0.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 8.0),
            child: Text(
              'Just Now',
              style: FlutterFlowTheme.of(context).labelSmall.override(
                    fontFamily: FlutterFlowTheme.of(context).labelSmallFamily,
                    letterSpacing: 0.0,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).labelSmallFamily),
                  ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondary,
              boxShadow: const [
                BoxShadow(
                  blurRadius: 3.0,
                  color: Color(0x33000000),
                  offset: Offset(
                    0.0,
                    1.0,
                  ),
                )
              ],
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(12.0),
                bottomRight: Radius.circular(0.0),
                topLeft: Radius.circular(12.0),
                topRight: Radius.circular(12.0),
              ),
              border: Border.all(
                color: FlutterFlowTheme.of(context).secondary,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SelectionArea(
                      child: Text(
                    'Hey really love what you\'re doing!',
                    style: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).titleSmallFamily,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).titleSmallFamily),
                        ),
                  )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
