import '/components/explore_card_with_module_widget.dart';
import '/components/live_session_long_card_widget.dart';
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

class HomeCategoriesModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for ChoiceChips widget.
  String? choiceChipsValue;
  FormFieldController<List<String>>? choiceChipsValueController;
  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for exploreCardWithModule component.
  late ExploreCardWithModuleModel exploreCardWithModuleModel1;
  // Model for exploreCardWithModule component.
  late ExploreCardWithModuleModel exploreCardWithModuleModel2;
  // Model for exploreCardWithModule component.
  late ExploreCardWithModuleModel exploreCardWithModuleModel3;
  // Model for exploreCardWithModule component.
  late ExploreCardWithModuleModel exploreCardWithModuleModel4;
  // Model for live_session_long_card component.
  late LiveSessionLongCardModel liveSessionLongCardModel1;
  // Model for live_session_long_card component.
  late LiveSessionLongCardModel liveSessionLongCardModel2;
  // Model for live_session_long_card component.
  late LiveSessionLongCardModel liveSessionLongCardModel3;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    exploreCardWithModuleModel1 =
        createModel(context, () => ExploreCardWithModuleModel());
    exploreCardWithModuleModel2 =
        createModel(context, () => ExploreCardWithModuleModel());
    exploreCardWithModuleModel3 =
        createModel(context, () => ExploreCardWithModuleModel());
    exploreCardWithModuleModel4 =
        createModel(context, () => ExploreCardWithModuleModel());
    liveSessionLongCardModel1 =
        createModel(context, () => LiveSessionLongCardModel());
    liveSessionLongCardModel2 =
        createModel(context, () => LiveSessionLongCardModel());
    liveSessionLongCardModel3 =
        createModel(context, () => LiveSessionLongCardModel());
  }

  void dispose() {
    unfocusNode.dispose();
    textController?.dispose();
    exploreCardWithModuleModel1.dispose();
    exploreCardWithModuleModel2.dispose();
    exploreCardWithModuleModel3.dispose();
    exploreCardWithModuleModel4.dispose();
    liveSessionLongCardModel1.dispose();
    liveSessionLongCardModel2.dispose();
    liveSessionLongCardModel3.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
