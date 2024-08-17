import '/components/app_icon/app_icon_widget.dart';
import '/components/club_card/club_card_widget.dart';
import '/components/settings_button/settings_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for AppIcon component.
  late AppIconModel appIconModel;
  // Model for SettingsButton component.
  late SettingsButtonModel settingsButtonModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for ClubCard component.
  late ClubCardModel clubCardModel;

  @override
  void initState(BuildContext context) {
    appIconModel = createModel(context, () => AppIconModel());
    settingsButtonModel = createModel(context, () => SettingsButtonModel());
    clubCardModel = createModel(context, () => ClubCardModel());
  }

  @override
  void dispose() {
    appIconModel.dispose();
    settingsButtonModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    clubCardModel.dispose();
  }
}
