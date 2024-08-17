import '/components/club_card/club_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'club_list_model.dart';
export 'club_list_model.dart';

class ClubListWidget extends StatefulWidget {
  const ClubListWidget({
    super.key,
    required this.clubId,
  });

  final String? clubId;

  @override
  State<ClubListWidget> createState() => _ClubListWidgetState();
}

class _ClubListWidgetState extends State<ClubListWidget> {
  late ClubListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ClubListModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 246.0,
      decoration: const BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(30.0, 20.0, 30.0, 0.0),
            child: Container(
              width: double.infinity,
              height: 138.0,
              decoration: const BoxDecoration(),
              child: Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: ListView(
                  padding: EdgeInsets.zero,
                  primary: false,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    wrapWithModel(
                      model: _model.clubCardModel,
                      updateCallback: () => setState(() {}),
                      child: const ClubCardWidget(),
                    ),
                  ].divide(const SizedBox(width: 10.0)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
