import '/components/event_list/event_list_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'result_page_widget.dart' show ResultPageWidget;
import 'package:flutter/material.dart';

class ResultPageModel extends FlutterFlowModel<ResultPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for EventList component.
  late EventListModel eventListModel;

  @override
  void initState(BuildContext context) {
    eventListModel = createModel(context, () => EventListModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    eventListModel.dispose();
  }
}
