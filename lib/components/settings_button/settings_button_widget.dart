import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'settings_button_model.dart';
export 'settings_button_model.dart';

class SettingsButtonWidget extends StatefulWidget {
  const SettingsButtonWidget({super.key});

  @override
  State<SettingsButtonWidget> createState() => _SettingsButtonWidgetState();
}

class _SettingsButtonWidgetState extends State<SettingsButtonWidget> {
  late SettingsButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SettingsButtonModel());

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
      alignment: const AlignmentDirectional(0.7, 0.0),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 22.0, 22.0, 0.0),
        child: FlutterFlowIconButton(
          borderRadius: 17.0,
          borderWidth: 1.0,
          buttonSize: 40.0,
          fillColor: FlutterFlowTheme.of(context).secondary,
          icon: Icon(
            Icons.settings_rounded,
            color: FlutterFlowTheme.of(context).secondaryText,
            size: 24.0,
          ),
          onPressed: () async {
            context.pushNamed('AccountSettings');
          },
        ),
      ),
    );
  }
}
