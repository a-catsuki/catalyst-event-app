import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/app_icon/app_icon_widget.dart';
import '/components/me_message/me_message_widget.dart';
import '/components/other_message/other_message_widget.dart';
import '/components/settings_button/settings_button_widget.dart';
import '/components/textfield_component/textfield_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'chat_page_model.dart';
export 'chat_page_model.dart';

class ChatPageWidget extends StatefulWidget {
  const ChatPageWidget({super.key});

  @override
  State<ChatPageWidget> createState() => _ChatPageWidgetState();
}

class _ChatPageWidgetState extends State<ChatPageWidget> {
  late ChatPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatPageModel());

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
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed('HomePage');
                              },
                              child: wrapWithModel(
                                model: _model.appIconModel,
                                updateCallback: () => setState(() {}),
                                child: const AppIconWidget(),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, -1.0),
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
              Align(
                alignment: const AlignmentDirectional(1.0, -1.0),
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.sizeOf(context).height * 0.738,
                  decoration: const BoxDecoration(),
                  alignment: const AlignmentDirectional(0.0, 1.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FutureBuilder<List<ChatRow>>(
                        future: ChatTable().querySingleRow(
                          queryFn: (q) => q,
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50.0,
                                height: 50.0,
                                child: CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    FlutterFlowTheme.of(context).primary,
                                  ),
                                ),
                              ),
                            );
                          }
                          List<ChatRow> containerChatRowList = snapshot.data!;

                          final containerChatRow =
                              containerChatRowList.isNotEmpty
                                  ? containerChatRowList.first
                                  : null;

                          return Container(
                            width: double.infinity,
                            height: 506.0,
                            decoration: const BoxDecoration(),
                            child: Builder(
                              builder: (context) {
                                final messages =
                                    containerChatRow?.msdId.toList() ?? [];

                                return Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: List.generate(messages.length,
                                      (messagesIndex) {
                                    final messagesItem =
                                        messages[messagesIndex];
                                    return Builder(
                                      builder: (context) {
                                        if ((containerChatRow
                                                ?.sender[messagesIndex]) !=
                                            currentUserUid) {
                                          return Align(
                                            alignment:
                                                const AlignmentDirectional(-1.0, 1.0),
                                            child: OtherMessageWidget(
                                              key: Key(
                                                  'Keycq7_${messagesIndex}_of_${messages.length}'),
                                              msg: _model
                                                  .textfieldComponentModel
                                                  .textController
                                                  .text,
                                              sender: currentUserUid,
                                              sentAt:
                                                  functions.getDayOfTheWeek(),
                                            ),
                                          );
                                        } else {
                                          return Container(
                                            child: Align(
                                              alignment: const AlignmentDirectional(
                                                  1.0, 1.0),
                                              child: MeMessageWidget(
                                                key: Key(
                                                    'Keyks0_${messagesIndex}_of_${messages.length}'),
                                                msg: _model
                                                    .textfieldComponentModel
                                                    .textController
                                                    .text,
                                                sender: currentUserUid,
                                                sentAt: getCurrentTimestamp,
                                              ),
                                            ),
                                          );
                                        }
                                      },
                                    );
                                  }),
                                );
                              },
                            ),
                          );
                        },
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          await ChatTable().update(
                            data: {
                              'msg': [],
                            },
                            matchingRows: (rows) => rows,
                          );
                        },
                        child: wrapWithModel(
                          model: _model.textfieldComponentModel,
                          updateCallback: () => setState(() {}),
                          child: const TextfieldComponentWidget(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
