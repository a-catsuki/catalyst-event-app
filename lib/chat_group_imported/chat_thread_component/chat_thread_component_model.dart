import '/backend/backend.dart';
import '/chat_group_imported/chat_thread_update/chat_thread_update_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'chat_thread_component_widget.dart' show ChatThreadComponentWidget;
import 'package:flutter/material.dart';

class ChatThreadComponentModel
    extends FlutterFlowModel<ChatThreadComponentWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Model for chat_threadUpdate component.
  late ChatThreadUpdateModel chatThreadUpdateModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    chatThreadUpdateModel = createModel(context, () => ChatThreadUpdateModel());
  }

  @override
  void dispose() {
    chatThreadUpdateModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
