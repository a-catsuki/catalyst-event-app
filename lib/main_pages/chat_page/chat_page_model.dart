import '/components/app_icon/app_icon_widget.dart';
import '/components/settings_button/settings_button_widget.dart';
import '/components/textfield_component/textfield_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'chat_page_widget.dart' show ChatPageWidget;
import 'package:flutter/material.dart';

class ChatPageModel extends FlutterFlowModel<ChatPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for AppIcon component.
  late AppIconModel appIconModel;
  // Model for SettingsButton component.
  late SettingsButtonModel settingsButtonModel;
  // Model for TextfieldComponent component.
  late TextfieldComponentModel textfieldComponentModel;

  @override
  void initState(BuildContext context) {
    appIconModel = createModel(context, () => AppIconModel());
    settingsButtonModel = createModel(context, () => SettingsButtonModel());
    textfieldComponentModel =
        createModel(context, () => TextfieldComponentModel());
  }

  @override
  void dispose() {
    appIconModel.dispose();
    settingsButtonModel.dispose();
    textfieldComponentModel.dispose();
  }
}
