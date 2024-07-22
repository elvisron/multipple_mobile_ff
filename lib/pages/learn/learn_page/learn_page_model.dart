import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/course_ad_plain_compo_widget.dart';
import '/components/explore_feature_widget.dart';
import '/components/learn_course_progress_widget.dart';
import '/components/no_data_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'learn_page_widget.dart' show LearnPageWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LearnPageModel extends FlutterFlowModel<LearnPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for exploreFeature component.
  late ExploreFeatureModel exploreFeatureModel;
  // Models for course_ad_plain_compo dynamic component.
  late FlutterFlowDynamicModels<CourseAdPlainCompoModel>
      courseAdPlainCompoModels;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  List<String>? get choiceChipsValues => choiceChipsValueController?.value;
  set choiceChipsValues(List<String>? val) =>
      choiceChipsValueController?.value = val;
  // Models for learn_course_progress dynamic component.
  late FlutterFlowDynamicModels<LearnCourseProgressModel>
      learnCourseProgressModels;

  @override
  void initState(BuildContext context) {
    exploreFeatureModel = createModel(context, () => ExploreFeatureModel());
    courseAdPlainCompoModels =
        FlutterFlowDynamicModels(() => CourseAdPlainCompoModel());
    learnCourseProgressModels =
        FlutterFlowDynamicModels(() => LearnCourseProgressModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    exploreFeatureModel.dispose();
    courseAdPlainCompoModels.dispose();
    learnCourseProgressModels.dispose();
  }
}
