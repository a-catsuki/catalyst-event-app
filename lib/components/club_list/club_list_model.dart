import '/components/club_card/club_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'club_list_widget.dart' show ClubListWidget;
import 'package:flutter/material.dart';

class ClubListModel extends FlutterFlowModel<ClubListWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for ClubCard component.
  late ClubCardModel clubCardModel;

  @override
  void initState(BuildContext context) {
    clubCardModel = createModel(context, () => ClubCardModel());
  }

  @override
  void dispose() {
    clubCardModel.dispose();
  }
}
