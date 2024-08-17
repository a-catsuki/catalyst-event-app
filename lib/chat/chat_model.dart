import '/chat_group_imported/chat_thread_component/chat_thread_component_widget.dart';
import '/components/app_icon/app_icon_widget.dart';
import '/components/darkmode/darkmode_widget.dart';
import '/components/settings_button/settings_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'chat_widget.dart' show ChatWidget;
import 'package:flutter/material.dart';

class ChatModel extends FlutterFlowModel<ChatWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for AppIcon component.
  late AppIconModel appIconModel;
  // Model for Darkmode component.
  late DarkmodeModel darkmodeModel;
  // Model for SettingsButton component.
  late SettingsButtonModel settingsButtonModel;
  // Model for chat_ThreadComponent component.
  late ChatThreadComponentModel chatThreadComponentModel;

  @override
  void initState(BuildContext context) {
    appIconModel = createModel(context, () => AppIconModel());
    darkmodeModel = createModel(context, () => DarkmodeModel());
    settingsButtonModel = createModel(context, () => SettingsButtonModel());
    chatThreadComponentModel =
        createModel(context, () => ChatThreadComponentModel());
  }

  @override
  void dispose() {
    appIconModel.dispose();
    darkmodeModel.dispose();
    settingsButtonModel.dispose();
    chatThreadComponentModel.dispose();
  }
}
