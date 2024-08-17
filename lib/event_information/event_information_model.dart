import '/backend/backend.dart';
import '/chat_group_imported/chat_thread_update/chat_thread_update_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'event_information_widget.dart' show EventInformationWidget;
import 'package:flutter/material.dart';

class EventInformationModel extends FlutterFlowModel<EventInformationWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for chat_threadUpdate component.
  late ChatThreadUpdateModel chatThreadUpdateModel;

  @override
  void initState(BuildContext context) {
    chatThreadUpdateModel = createModel(context, () => ChatThreadUpdateModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    chatThreadUpdateModel.dispose();
  }
}
