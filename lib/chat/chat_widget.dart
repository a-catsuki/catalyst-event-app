import '/chat_group_imported/chat_thread_component/chat_thread_component_widget.dart';
import '/components/app_icon/app_icon_widget.dart';
import '/components/darkmode/darkmode_widget.dart';
import '/components/settings_button/settings_button_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'chat_model.dart';
export 'chat_model.dart';

class ChatWidget extends StatefulWidget {
  const ChatWidget({super.key});

  @override
  State<ChatWidget> createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  late ChatModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(-1.0, -1.0),
                          child: Container(
                            width: 76.0,
                            height: 59.0,
                            decoration: const BoxDecoration(),
                            child: wrapWithModel(
                              model: _model.appIconModel,
                              updateCallback: () => setState(() {}),
                              child: const AppIconWidget(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 50.0,
                    height: 70.0,
                    decoration: const BoxDecoration(),
                    child: wrapWithModel(
                      model: _model.darkmodeModel,
                      updateCallback: () => setState(() {}),
                      child: const DarkmodeWidget(),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(1.0, -1.0),
                    child: wrapWithModel(
                      model: _model.settingsButtonModel,
                      updateCallback: () => setState(() {}),
                      child: const SettingsButtonWidget(),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                      child: Container(
                        width: 393.0,
                        height: 69.0,
                        decoration: const BoxDecoration(),
                        child: Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Text(
                            'chat.',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .titleLarge
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleLargeFamily,
                                  fontSize: 40.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .titleLargeFamily),
                                ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                height: 539.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: wrapWithModel(
                          model: _model.chatThreadComponentModel,
                          updateCallback: () => setState(() {}),
                          child: const ChatThreadComponentWidget(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
