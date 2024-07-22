import '/components/user_profile_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'account_page_settings_security_widget.dart'
    show AccountPageSettingsSecurityWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AccountPageSettingsSecurityModel
    extends FlutterFlowModel<AccountPageSettingsSecurityWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for userProfileCard component.
  late UserProfileCardModel userProfileCardModel;
  // State field(s) for Switch widget.
  bool? switchValue1;
  // State field(s) for Switch widget.
  bool? switchValue2;

  @override
  void initState(BuildContext context) {
    userProfileCardModel = createModel(context, () => UserProfileCardModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    userProfileCardModel.dispose();
  }
}
