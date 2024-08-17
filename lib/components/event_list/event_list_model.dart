import '/components/event_card/event_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'event_list_widget.dart' show EventListWidget;
import 'package:flutter/material.dart';

class EventListModel extends FlutterFlowModel<EventListWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for EventCard component.
  late EventCardModel eventCardModel1;
  // Model for EventCard component.
  late EventCardModel eventCardModel2;
  // Model for EventCard component.
  late EventCardModel eventCardModel3;

  @override
  void initState(BuildContext context) {
    eventCardModel1 = createModel(context, () => EventCardModel());
    eventCardModel2 = createModel(context, () => EventCardModel());
    eventCardModel3 = createModel(context, () => EventCardModel());
  }

  @override
  void dispose() {
    eventCardModel1.dispose();
    eventCardModel2.dispose();
    eventCardModel3.dispose();
  }
}
