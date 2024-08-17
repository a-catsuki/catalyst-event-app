import '/components/club_card/club_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'club_list_widget.dart' show ClubListWidget;
import 'package:flutter/material.dart';

class ClubListModel extends FlutterFlowModel<ClubListWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for ClubCard component.
  late ClubCardModel clubCardModel1;
  // Model for ClubCard component.
  late ClubCardModel clubCardModel2;
  // Model for ClubCard component.
  late ClubCardModel clubCardModel3;

  @override
  void initState(BuildContext context) {
    clubCardModel1 = createModel(context, () => ClubCardModel());
    clubCardModel2 = createModel(context, () => ClubCardModel());
    clubCardModel3 = createModel(context, () => ClubCardModel());
  }

  @override
  void dispose() {
    clubCardModel1.dispose();
    clubCardModel2.dispose();
    clubCardModel3.dispose();
  }
}
