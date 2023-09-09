import '/components/course_ad_plain_compo_widget.dart';
import '/components/explore_feature_widget.dart';
import '/components/learn_course_progress_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LearnPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for exploreFeature component.
  late ExploreFeatureModel exploreFeatureModel;
  // Model for course_ad_plain_compo component.
  late CourseAdPlainCompoModel courseAdPlainCompoModel;
  // State field(s) for ChoiceChips widget.
  String? choiceChipsValue;
  FormFieldController<List<String>>? choiceChipsValueController;
  // Model for learn_course_progress component.
  late LearnCourseProgressModel learnCourseProgressModel1;
  // Model for learn_course_progress component.
  late LearnCourseProgressModel learnCourseProgressModel2;
  // Model for learn_course_progress component.
  late LearnCourseProgressModel learnCourseProgressModel3;
  // Model for learn_course_progress component.
  late LearnCourseProgressModel learnCourseProgressModel4;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    exploreFeatureModel = createModel(context, () => ExploreFeatureModel());
    courseAdPlainCompoModel =
        createModel(context, () => CourseAdPlainCompoModel());
    learnCourseProgressModel1 =
        createModel(context, () => LearnCourseProgressModel());
    learnCourseProgressModel2 =
        createModel(context, () => LearnCourseProgressModel());
    learnCourseProgressModel3 =
        createModel(context, () => LearnCourseProgressModel());
    learnCourseProgressModel4 =
        createModel(context, () => LearnCourseProgressModel());
  }

  void dispose() {
    unfocusNode.dispose();
    exploreFeatureModel.dispose();
    courseAdPlainCompoModel.dispose();
    learnCourseProgressModel1.dispose();
    learnCourseProgressModel2.dispose();
    learnCourseProgressModel3.dispose();
    learnCourseProgressModel4.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
