import '/components/commentupdate/commentupdate_widget.dart';
import '/components/textfield_component/textfield_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'comment_component_model.dart';
export 'comment_component_model.dart';

class CommentComponentWidget extends StatefulWidget {
  const CommentComponentWidget({super.key});

  @override
  State<CommentComponentWidget> createState() => _CommentComponentWidgetState();
}

class _CommentComponentWidgetState extends State<CommentComponentWidget> {
  late CommentComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CommentComponentModel());

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
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.fromLTRB(
                0,
                12.0,
                0,
                0,
              ),
              scrollDirection: Axis.vertical,
              children: [
                Container(
                  decoration: const BoxDecoration(),
                  child: SizedBox(
                    height: 200.0,
                    child: wrapWithModel(
                      model: _model.commentupdateModel,
                      updateCallback: () => setState(() {}),
                      child: const CommentupdateWidget(),
                    ),
                  ),
                ),
              ],
            ),
          ),
          wrapWithModel(
            model: _model.textfieldComponentModel,
            updateCallback: () => setState(() {}),
            child: const TextfieldComponentWidget(),
          ),
        ],
      ),
    );
  }
}
