import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/certificate_card_widget.dart';
import '/components/no_data_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'account_page_user_achievement_widget.dart'
    show AccountPageUserAchievementWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AccountPageUserAchievementModel
    extends FlutterFlowModel<AccountPageUserAchievementWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Models for CertificateCard dynamic component.
  late FlutterFlowDynamicModels<CertificateCardModel> certificateCardModels1;

  @override
  void initState(BuildContext context) {
    certificateCardModels1 =
        FlutterFlowDynamicModels(() => CertificateCardModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    certificateCardModels1.dispose();
  }
}
