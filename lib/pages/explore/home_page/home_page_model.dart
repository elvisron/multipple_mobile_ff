import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/explore_card_with_module_widget.dart';
import '/components/explore_feature_widget.dart';
import '/components/live_session_long_card_widget.dart';
import '/components/no_data_widget.dart';
import '/components/stacked_card_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Retrieve Tenant Information)] action in HomePage widget.
  ApiCallResponse? apiResultm8e;
  // Model for exploreFeature component.
  late ExploreFeatureModel exploreFeatureModel;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // Models for stacked_card dynamic component.
  late FlutterFlowDynamicModels<StackedCardModel> stackedCardModels;
  // Models for exploreCardWithModule dynamic component.
  late FlutterFlowDynamicModels<ExploreCardWithModuleModel>
      exploreCardWithModuleModels1;
  // Models for exploreCardWithModule dynamic component.
  late FlutterFlowDynamicModels<ExploreCardWithModuleModel>
      exploreCardWithModuleModels2;
  // Models for live_session_long_card dynamic component.
  late FlutterFlowDynamicModels<LiveSessionLongCardModel>
      liveSessionLongCardModels;

  @override
  void initState(BuildContext context) {
    exploreFeatureModel = createModel(context, () => ExploreFeatureModel());
    stackedCardModels = FlutterFlowDynamicModels(() => StackedCardModel());
    exploreCardWithModuleModels1 =
        FlutterFlowDynamicModels(() => ExploreCardWithModuleModel());
    exploreCardWithModuleModels2 =
        FlutterFlowDynamicModels(() => ExploreCardWithModuleModel());
    liveSessionLongCardModels =
        FlutterFlowDynamicModels(() => LiveSessionLongCardModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    exploreFeatureModel.dispose();
    stackedCardModels.dispose();
    exploreCardWithModuleModels1.dispose();
    exploreCardWithModuleModels2.dispose();
    liveSessionLongCardModels.dispose();
  }
}
