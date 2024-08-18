import '/components/commentupdate/commentupdate_widget.dart';
import '/components/event_component/event_component_widget.dart';
import '/components/textfield_component/textfield_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'event_information_widget.dart' show EventInformationWidget;
import 'package:flutter/material.dart';

class EventInformationModel extends FlutterFlowModel<EventInformationWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for EventComponent component.
  late EventComponentModel eventComponentModel;
  // Model for Commentupdate component.
  late CommentupdateModel commentupdateModel;
  // Model for TextfieldComponent component.
  late TextfieldComponentModel textfieldComponentModel;

  @override
  void initState(BuildContext context) {
    eventComponentModel = createModel(context, () => EventComponentModel());
    commentupdateModel = createModel(context, () => CommentupdateModel());
    textfieldComponentModel =
        createModel(context, () => TextfieldComponentModel());
  }

  @override
  void dispose() {
    eventComponentModel.dispose();
    commentupdateModel.dispose();
    textfieldComponentModel.dispose();
  }
}
