import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import '/flutter_flow/custom_functions.dart' as functions;
import 'learn_course_progress_widget.dart' show LearnCourseProgressWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class LearnCourseProgressModel
    extends FlutterFlowModel<LearnCourseProgressWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Retreive a Course Information by learner)] action in taskDetails widget.
  ApiCallResponse? apiResultxz8;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
