import '/components/module_list_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LearnCourseInfoModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for moduleListCard component.
  late ModuleListCardModel moduleListCardModel1;
  // Model for moduleListCard component.
  late ModuleListCardModel moduleListCardModel2;
  // Model for moduleListCard component.
  late ModuleListCardModel moduleListCardModel3;
  // Model for moduleListCard component.
  late ModuleListCardModel moduleListCardModel4;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    moduleListCardModel1 = createModel(context, () => ModuleListCardModel());
    moduleListCardModel2 = createModel(context, () => ModuleListCardModel());
    moduleListCardModel3 = createModel(context, () => ModuleListCardModel());
    moduleListCardModel4 = createModel(context, () => ModuleListCardModel());
  }

  void dispose() {
    unfocusNode.dispose();
    moduleListCardModel1.dispose();
    moduleListCardModel2.dispose();
    moduleListCardModel3.dispose();
    moduleListCardModel4.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
