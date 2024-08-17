import '/components/event_card/event_card_widget.dart';
import '/components/event_list/event_list_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'club_information_widget.dart' show ClubInformationWidget;
import 'package:flutter/material.dart';

class ClubInformationModel extends FlutterFlowModel<ClubInformationWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for EventList component.
  late EventListModel eventListModel;
  // Model for EventCard component.
  late EventCardModel eventCardModel;

  @override
  void initState(BuildContext context) {
    eventListModel = createModel(context, () => EventListModel());
    eventCardModel = createModel(context, () => EventCardModel());
  }

  @override
  void dispose() {
    eventListModel.dispose();
    eventCardModel.dispose();
  }
}
