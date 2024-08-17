import '/components/app_icon/app_icon_widget.dart';
import '/components/club_card/club_card_widget.dart';
import '/components/club_list/club_list_widget.dart';
import '/components/support_button/support_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'club_page_widget.dart' show ClubPageWidget;
import 'package:flutter/material.dart';

class ClubPageModel extends FlutterFlowModel<ClubPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for AppIcon component.
  late AppIconModel appIconModel;
  // Model for SupportButton component.
  late SupportButtonModel supportButtonModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for ClubCard component.
  late ClubCardModel clubCardModel1;
  // Model for ClubCard component.
  late ClubCardModel clubCardModel2;
  // Model for ClubList component.
  late ClubListModel clubListModel1;
  // Model for ClubList component.
  late ClubListModel clubListModel2;
  // Model for ClubList component.
  late ClubListModel clubListModel3;

  @override
  void initState(BuildContext context) {
    appIconModel = createModel(context, () => AppIconModel());
    supportButtonModel = createModel(context, () => SupportButtonModel());
    clubCardModel1 = createModel(context, () => ClubCardModel());
    clubCardModel2 = createModel(context, () => ClubCardModel());
    clubListModel1 = createModel(context, () => ClubListModel());
    clubListModel2 = createModel(context, () => ClubListModel());
    clubListModel3 = createModel(context, () => ClubListModel());
  }

  @override
  void dispose() {
    appIconModel.dispose();
    supportButtonModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    clubCardModel1.dispose();
    clubCardModel2.dispose();
    clubListModel1.dispose();
    clubListModel2.dispose();
    clubListModel3.dispose();
  }
}
