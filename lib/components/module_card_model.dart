import '/components/module_list_card_widget.dart';
import '/components/video_list_unplayed_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'module_card_widget.dart' show ModuleCardWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ModuleCardModel extends FlutterFlowModel<ModuleCardWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for moduleListCard component.
  late ModuleListCardModel moduleListCardModel;
  // Model for videoListUnplayed component.
  late VideoListUnplayedModel videoListUnplayedModel;

  @override
  void initState(BuildContext context) {
    moduleListCardModel = createModel(context, () => ModuleListCardModel());
    videoListUnplayedModel =
        createModel(context, () => VideoListUnplayedModel());
  }

  @override
  void dispose() {
    moduleListCardModel.dispose();
    videoListUnplayedModel.dispose();
  }
}
