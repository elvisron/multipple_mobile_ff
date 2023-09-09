import '/components/explore_feature_widget.dart';
import '/components/happening_card_widget.dart';
import '/components/live_session_long_card_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LiveSessionPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for exploreFeature component.
  late ExploreFeatureModel exploreFeatureModel;
  // Model for happeningCard component.
  late HappeningCardModel happeningCardModel1;
  // Model for happeningCard component.
  late HappeningCardModel happeningCardModel2;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Model for live_session_long_card component.
  late LiveSessionLongCardModel liveSessionLongCardModel1;
  // Model for live_session_long_card component.
  late LiveSessionLongCardModel liveSessionLongCardModel2;
  // Model for live_session_long_card component.
  late LiveSessionLongCardModel liveSessionLongCardModel3;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    exploreFeatureModel = createModel(context, () => ExploreFeatureModel());
    happeningCardModel1 = createModel(context, () => HappeningCardModel());
    happeningCardModel2 = createModel(context, () => HappeningCardModel());
    liveSessionLongCardModel1 =
        createModel(context, () => LiveSessionLongCardModel());
    liveSessionLongCardModel2 =
        createModel(context, () => LiveSessionLongCardModel());
    liveSessionLongCardModel3 =
        createModel(context, () => LiveSessionLongCardModel());
  }

  void dispose() {
    unfocusNode.dispose();
    exploreFeatureModel.dispose();
    happeningCardModel1.dispose();
    happeningCardModel2.dispose();
    liveSessionLongCardModel1.dispose();
    liveSessionLongCardModel2.dispose();
    liveSessionLongCardModel3.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
