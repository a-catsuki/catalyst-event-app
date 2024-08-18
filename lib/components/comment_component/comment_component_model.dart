import '/components/commentupdate/commentupdate_widget.dart';
import '/components/textfield_component/textfield_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'comment_component_widget.dart' show CommentComponentWidget;
import 'package:flutter/material.dart';

class CommentComponentModel extends FlutterFlowModel<CommentComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Commentupdate component.
  late CommentupdateModel commentupdateModel;
  // Model for TextfieldComponent component.
  late TextfieldComponentModel textfieldComponentModel;

  @override
  void initState(BuildContext context) {
    commentupdateModel = createModel(context, () => CommentupdateModel());
    textfieldComponentModel =
        createModel(context, () => TextfieldComponentModel());
  }

  @override
  void dispose() {
    commentupdateModel.dispose();
    textfieldComponentModel.dispose();
  }
}
