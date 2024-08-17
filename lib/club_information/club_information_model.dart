import '/components/event_list/event_list_widget.dart';
import '/components/title_and_see_all/title_and_see_all_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'club_information_widget.dart' show ClubInformationWidget;
import 'package:flutter/material.dart';

class ClubInformationModel extends FlutterFlowModel<ClubInformationWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Title_and_SeeAll component.
  late TitleAndSeeAllModel titleAndSeeAllModel;
  // Model for EventList component.
  late EventListModel eventListModel;

  @override
  void initState(BuildContext context) {
    titleAndSeeAllModel = createModel(context, () => TitleAndSeeAllModel());
    eventListModel = createModel(context, () => EventListModel());
  }

  @override
  void dispose() {
    titleAndSeeAllModel.dispose();
    eventListModel.dispose();
  }
}
