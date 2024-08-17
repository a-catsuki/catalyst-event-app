import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'app_icon_model.dart';
export 'app_icon_model.dart';

class AppIconWidget extends StatefulWidget {
  const AppIconWidget({super.key});

  @override
  State<AppIconWidget> createState() => _AppIconWidgetState();
}

class _AppIconWidgetState extends State<AppIconWidget> {
  late AppIconModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AppIconModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 0.0, 0.0),
      child: Icon(
        FFIcons.kflareLogo,
        color: Color(0xFFFFDD8A),
        size: 40.0,
      ),
    );
  }
}
