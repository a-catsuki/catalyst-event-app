import '/components/app_icon/app_icon_widget.dart';
import '/components/club_card/club_card_widget.dart';
import '/components/settings_button/settings_button_widget.dart';
import '/components/title_and_see_all/title_and_see_all_widget.dart';
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
  // Model for ClubCard component.
  late ClubCardModel clubCardModel1;
  // Model for Title_and_SeeAll component.
  late TitleAndSeeAllModel titleAndSeeAllModel;
  // Model for ClubCard component.
  late ClubCardModel clubCardModel2;

  @override
  void initState(BuildContext context) {
    appIconModel = createModel(context, () => AppIconModel());
    settingsButtonModel = createModel(context, () => SettingsButtonModel());
    clubCardModel1 = createModel(context, () => ClubCardModel());
    titleAndSeeAllModel = createModel(context, () => TitleAndSeeAllModel());
    clubCardModel2 = createModel(context, () => ClubCardModel());
  }

  @override
  void dispose() {
    appIconModel.dispose();
    settingsButtonModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    clubCardModel1.dispose();
    titleAndSeeAllModel.dispose();
    clubCardModel2.dispose();
  }
}
