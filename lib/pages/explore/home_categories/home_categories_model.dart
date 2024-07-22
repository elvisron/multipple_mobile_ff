import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/explore_card_with_module_widget.dart';
import '/components/explore_feature_widget.dart';
import '/components/no_data_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'home_categories_widget.dart' show HomeCategoriesWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeCategoriesModel extends FlutterFlowModel<HomeCategoriesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  List<String>? get choiceChipsValues => choiceChipsValueController?.value;
  set choiceChipsValues(List<String>? val) =>
      choiceChipsValueController?.value = val;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for exploreFeature component.
  late ExploreFeatureModel exploreFeatureModel;
  // Models for exploreCardWithModule dynamic component.
  late FlutterFlowDynamicModels<ExploreCardWithModuleModel>
      exploreCardWithModuleModels;

  @override
  void initState(BuildContext context) {
    exploreFeatureModel = createModel(context, () => ExploreFeatureModel());
    exploreCardWithModuleModels =
        FlutterFlowDynamicModels(() => ExploreCardWithModuleModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    exploreFeatureModel.dispose();
    exploreCardWithModuleModels.dispose();
  }
}
