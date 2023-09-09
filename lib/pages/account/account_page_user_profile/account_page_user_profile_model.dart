import '/components/certificate_card_widget.dart';
import '/components/user_profile_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AccountPageUserProfileModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for userProfileCard component.
  late UserProfileCardModel userProfileCardModel;
  // Model for CertificateCard component.
  late CertificateCardModel certificateCardModel1;
  // Model for CertificateCard component.
  late CertificateCardModel certificateCardModel2;
  // Model for CertificateCard component.
  late CertificateCardModel certificateCardModel3;
  // Model for CertificateCard component.
  late CertificateCardModel certificateCardModel4;
  // Model for CertificateCard component.
  late CertificateCardModel certificateCardModel5;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    userProfileCardModel = createModel(context, () => UserProfileCardModel());
    certificateCardModel1 = createModel(context, () => CertificateCardModel());
    certificateCardModel2 = createModel(context, () => CertificateCardModel());
    certificateCardModel3 = createModel(context, () => CertificateCardModel());
    certificateCardModel4 = createModel(context, () => CertificateCardModel());
    certificateCardModel5 = createModel(context, () => CertificateCardModel());
  }

  void dispose() {
    unfocusNode.dispose();
    userProfileCardModel.dispose();
    certificateCardModel1.dispose();
    certificateCardModel2.dispose();
    certificateCardModel3.dispose();
    certificateCardModel4.dispose();
    certificateCardModel5.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
