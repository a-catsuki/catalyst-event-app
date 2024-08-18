import '/components/app_icon/app_icon_widget.dart';
import '/components/see_all_component/see_all_component_widget.dart';
import '/components/settings_button/settings_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'club_page_widget.dart' show ClubPageWidget;
import 'package:flutter/material.dart';

class ClubPageModel extends FlutterFlowModel<ClubPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for AppIcon component.
  late AppIconModel appIconModel;
  // Model for SettingsButton component.
  late SettingsButtonModel settingsButtonModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for SeeAllComponent component.
  late SeeAllComponentModel seeAllComponentModel;

  @override
  void initState(BuildContext context) {
    appIconModel = createModel(context, () => AppIconModel());
    settingsButtonModel = createModel(context, () => SettingsButtonModel());
    seeAllComponentModel = createModel(context, () => SeeAllComponentModel());
  }

  @override
  void dispose() {
    appIconModel.dispose();
    settingsButtonModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    seeAllComponentModel.dispose();
  }
}