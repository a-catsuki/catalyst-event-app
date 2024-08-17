import '/components/app_icon/app_icon_widget.dart';
import '/components/darkmode/darkmode_widget.dart';
import '/components/support_button/support_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'chat_widget.dart' show ChatWidget;
import 'package:flutter/material.dart';

class ChatModel extends FlutterFlowModel<ChatWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for AppIcon component.
  late AppIconModel appIconModel;
  // Model for Darkmode component.
  late DarkmodeModel darkmodeModel;
  // Model for SupportButton component.
  late SupportButtonModel supportButtonModel;

  @override
  void initState(BuildContext context) {
    appIconModel = createModel(context, () => AppIconModel());
    darkmodeModel = createModel(context, () => DarkmodeModel());
    supportButtonModel = createModel(context, () => SupportButtonModel());
  }

  @override
  void dispose() {
    appIconModel.dispose();
    darkmodeModel.dispose();
    supportButtonModel.dispose();
  }
}
