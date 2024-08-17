import '/chat_group_imported/chat_thread_component/chat_thread_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'chat2_details_model.dart';
export 'chat2_details_model.dart';

class Chat2DetailsWidget extends StatefulWidget {
  const Chat2DetailsWidget({super.key});

  @override
  State<Chat2DetailsWidget> createState() => _Chat2DetailsWidgetState();
}

class _Chat2DetailsWidgetState extends State<Chat2DetailsWidget> {
  late Chat2DetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Chat2DetailsModel());

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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: wrapWithModel(
            model: _model.chatThreadComponentModel,
            updateCallback: () => setState(() {}),
            updateOnChange: true,
            child: const ChatThreadComponentWidget(),
          ),
        ),
      ),
    );
  }
}
