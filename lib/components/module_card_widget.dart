import '/components/module_list_card_widget.dart';
import '/components/video_list_unplayed_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'module_card_model.dart';
export 'module_card_model.dart';

class ModuleCardWidget extends StatefulWidget {
  const ModuleCardWidget({super.key});

  @override
  State<ModuleCardWidget> createState() => _ModuleCardWidgetState();
}

class _ModuleCardWidgetState extends State<ModuleCardWidget> {
  late ModuleCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ModuleCardModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        wrapWithModel(
          model: _model.moduleListCardModel,
          updateCallback: () => setState(() {}),
          child: ModuleListCardWidget(),
        ),
        wrapWithModel(
          model: _model.videoListUnplayedModel,
          updateCallback: () => setState(() {}),
          child: VideoListUnplayedWidget(),
        ),
      ],
    );
  }
}
