import '/components/app_icon/app_icon_widget.dart';
import '/components/club_list/club_list_widget.dart';
import '/components/event_card/event_card_widget.dart';
import '/components/event_list/event_list_widget.dart';
import '/components/login_button/login_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for AppIcon component.
  late AppIconModel appIconModel;
  // Model for LoginButton component.
  late LoginButtonModel loginButtonModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for EventCard component.
  late EventCardModel eventCardModel1;
  // Model for EventCard component.
  late EventCardModel eventCardModel2;
  // Model for EventList component.
  late EventListModel eventListModel1;
  // Model for EventList component.
  late EventListModel eventListModel2;
  // Model for ClubList component.
  late ClubListModel clubListModel;

  @override
  void initState(BuildContext context) {
    appIconModel = createModel(context, () => AppIconModel());
    loginButtonModel = createModel(context, () => LoginButtonModel());
    eventCardModel1 = createModel(context, () => EventCardModel());
    eventCardModel2 = createModel(context, () => EventCardModel());
    eventListModel1 = createModel(context, () => EventListModel());
    eventListModel2 = createModel(context, () => EventListModel());
    clubListModel = createModel(context, () => ClubListModel());
  }

  @override
  void dispose() {
    appIconModel.dispose();
    loginButtonModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    eventCardModel1.dispose();
    eventCardModel2.dispose();
    eventListModel1.dispose();
    eventListModel2.dispose();
    clubListModel.dispose();
  }
}
