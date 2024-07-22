import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import '/flutter_flow/custom_functions.dart' as functions;
import 'module_list_card_widget.dart' show ModuleListCardWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ModuleListCardModel extends FlutterFlowModel<ModuleListCardWidget> {
  ///  Local state fields for this component.

  String vidType = 'MVID';

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Retrieve an item from Library by learner)] action in taskDetails widget.
  ApiCallResponse? moduleApi;
  // Stores action output result for [Backend Call - API (Get DTF course details)] action in taskDetails widget.
  ApiCallResponse? assetApi;
  // Stores action output result for [Backend Call - API (Get VTS Data)] action in taskDetails widget.
  ApiCallResponse? vtsApi;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
