import '/components/event_card/event_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'event_list_model.dart';
export 'event_list_model.dart';

class EventListWidget extends StatefulWidget {
  const EventListWidget({super.key});

  @override
  State<EventListWidget> createState() => _EventListWidgetState();
}

class _EventListWidgetState extends State<EventListWidget> {
  late EventListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EventListModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: wrapWithModel(
        model: _model.eventCardModel,
        updateCallback: () => setState(() {}),
        child: const EventCardWidget(),
      ),
    );
  }
}
