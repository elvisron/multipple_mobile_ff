import '/components/user_profile_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AccountPageSettingsModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for userProfileCard component.
  late UserProfileCardModel userProfileCardModel1;
  // State field(s) for Switch widget.
  bool? switchValue1;
  // State field(s) for Switch widget.
  bool? switchValue2;
  // Model for userProfileCard component.
  late UserProfileCardModel userProfileCardModel2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    userProfileCardModel1 = createModel(context, () => UserProfileCardModel());
    userProfileCardModel2 = createModel(context, () => UserProfileCardModel());
  }

  void dispose() {
    unfocusNode.dispose();
    userProfileCardModel1.dispose();
    userProfileCardModel2.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
