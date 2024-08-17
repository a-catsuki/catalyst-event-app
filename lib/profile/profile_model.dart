import '/components/app_icon/app_icon_widget.dart';
import '/components/darkmode/darkmode_widget.dart';
import '/components/event_card/event_card_widget.dart';
import '/components/settings_button/settings_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'profile_widget.dart' show ProfileWidget;
import 'package:flutter/material.dart';

class ProfileModel extends FlutterFlowModel<ProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for AppIcon component.
  late AppIconModel appIconModel;
  // Model for Darkmode component.
  late DarkmodeModel darkmodeModel;
  // Model for SettingsButton component.
  late SettingsButtonModel settingsButtonModel;
  // Model for EventCard component.
  late EventCardModel eventCardModel;

  @override
  void initState(BuildContext context) {
    appIconModel = createModel(context, () => AppIconModel());
    darkmodeModel = createModel(context, () => DarkmodeModel());
    settingsButtonModel = createModel(context, () => SettingsButtonModel());
    eventCardModel = createModel(context, () => EventCardModel());
  }

  @override
  void dispose() {
    appIconModel.dispose();
    darkmodeModel.dispose();
    settingsButtonModel.dispose();
    eventCardModel.dispose();
  }
}
