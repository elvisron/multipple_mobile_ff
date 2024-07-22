import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/explore_feature_widget.dart';
import '/components/happening_card_widget.dart';
import '/components/live_session_long_card_widget.dart';
import '/components/no_data_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'live_session_page_widget.dart' show LiveSessionPageWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LiveSessionPageModel extends FlutterFlowModel<LiveSessionPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for exploreFeature component.
  late ExploreFeatureModel exploreFeatureModel;
  // Models for happeningCard dynamic component.
  late FlutterFlowDynamicModels<HappeningCardModel> happeningCardModels1;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Models for live_session_long_card dynamic component.
  late FlutterFlowDynamicModels<LiveSessionLongCardModel>
      liveSessionLongCardModels1;

  @override
  void initState(BuildContext context) {
    exploreFeatureModel = createModel(context, () => ExploreFeatureModel());
    happeningCardModels1 = FlutterFlowDynamicModels(() => HappeningCardModel());
    liveSessionLongCardModels1 =
        FlutterFlowDynamicModels(() => LiveSessionLongCardModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    exploreFeatureModel.dispose();
    happeningCardModels1.dispose();
    liveSessionLongCardModels1.dispose();
  }
}
