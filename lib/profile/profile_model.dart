import '/components/app_icon/app_icon_widget.dart';
import '/components/darkmode/darkmode_widget.dart';
import '/components/event_card/event_card_widget.dart';
import '/components/support_button/support_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'profile_widget.dart' show ProfileWidget;
import 'package:flutter/material.dart';

class ProfileModel extends FlutterFlowModel<ProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for AppIcon component.
  late AppIconModel appIconModel;
  // Model for Darkmode component.
  late DarkmodeModel darkmodeModel;
  // Model for SupportButton component.
  late SupportButtonModel supportButtonModel;
  // Model for EventCard component.
  late EventCardModel eventCardModel1;
  // Model for EventCard component.
  late EventCardModel eventCardModel2;
  // Model for EventCard component.
  late EventCardModel eventCardModel3;

  @override
  void initState(BuildContext context) {
    appIconModel = createModel(context, () => AppIconModel());
    darkmodeModel = createModel(context, () => DarkmodeModel());
    supportButtonModel = createModel(context, () => SupportButtonModel());
    eventCardModel1 = createModel(context, () => EventCardModel());
    eventCardModel2 = createModel(context, () => EventCardModel());
    eventCardModel3 = createModel(context, () => EventCardModel());
  }

  @override
  void dispose() {
    appIconModel.dispose();
    darkmodeModel.dispose();
    supportButtonModel.dispose();
    eventCardModel1.dispose();
    eventCardModel2.dispose();
    eventCardModel3.dispose();
  }
}
