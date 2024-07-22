import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'learnv_video_widget.dart' show LearnvVideoWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LearnvVideoModel extends FlutterFlowModel<LearnvVideoWidget> {
  ///  Local state fields for this page.

  String vid = 'https://youtu.be/4oL_VLu2dk8';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Retrieve an item from Library by learner)] action in IconButton widget.
  ApiCallResponse? moduleApiCopy;
  // Stores action output result for [Backend Call - API (Get DTF course details)] action in IconButton widget.
  ApiCallResponse? assetApiCopy;
  // Stores action output result for [Backend Call - API (Get VTS Data)] action in IconButton widget.
  ApiCallResponse? vtsApiCopy;
  // Stores action output result for [Backend Call - API (Retrieve an item from Library by learner)] action in IconButton widget.
  ApiCallResponse? moduleApi;
  // Stores action output result for [Backend Call - API (Get DTF course details)] action in IconButton widget.
  ApiCallResponse? assetApi;
  // Stores action output result for [Backend Call - API (Get VTS Data)] action in IconButton widget.
  ApiCallResponse? vtsApi;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
