import '/components/module_list_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'learn_course_info_widget.dart' show LearnCourseInfoWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LearnCourseInfoModel extends FlutterFlowModel<LearnCourseInfoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Models for moduleListCard dynamic component.
  late FlutterFlowDynamicModels<ModuleListCardModel> moduleListCardModels;

  @override
  void initState(BuildContext context) {
    moduleListCardModels =
        FlutterFlowDynamicModels(() => ModuleListCardModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    moduleListCardModels.dispose();
  }
}
