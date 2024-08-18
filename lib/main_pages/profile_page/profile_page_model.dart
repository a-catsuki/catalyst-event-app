import '/components/app_icon/app_icon_widget.dart';
import '/components/settings_button/settings_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'profile_page_widget.dart' show ProfilePageWidget;
import 'package:flutter/material.dart';

class ProfilePageModel extends FlutterFlowModel<ProfilePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for AppIcon component.
  late AppIconModel appIconModel;
  // Model for SettingsButton component.
  late SettingsButtonModel settingsButtonModel;

  @override
  void initState(BuildContext context) {
    appIconModel = createModel(context, () => AppIconModel());
    settingsButtonModel = createModel(context, () => SettingsButtonModel());
  }

  @override
  void dispose() {
    appIconModel.dispose();
    settingsButtonModel.dispose();
  }
}
