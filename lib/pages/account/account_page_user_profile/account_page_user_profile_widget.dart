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
import 'account_page_user_profile_model.dart';
export 'account_page_user_profile_model.dart';

class AccountPageUserProfileWidget extends StatefulWidget {
  const AccountPageUserProfileWidget({Key? key}) : super(key: key);

  @override
  _AccountPageUserProfileWidgetState createState() =>
      _AccountPageUserProfileWidgetState();
}

class _AccountPageUserProfileWidgetState
    extends State<AccountPageUserProfileWidget> {
  late AccountPageUserProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AccountPageUserProfileModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Account',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  fontSize: 21.0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ListView(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              children: [
                                Container(
                                  width: 363.0,
                                  height: 0.0,
                                  decoration: BoxDecoration(),
                                  child: wrapWithModel(
                                    model: _model.userProfileCardModel,
                                    updateCallback: () => setState(() {}),
                                    child: UserProfileCardWidget(),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 16.0, 16.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'All Certificates',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        height: 8.0,
                        thickness: 1.0,
                        color: FlutterFlowTheme.of(context).alternate,
                      ),
                    ],
                  ),
                ),
                wrapWithModel(
                  model: _model.certificateCardModel1,
                  updateCallback: () => setState(() {}),
                  child: CertificateCardWidget(),
                ),
                wrapWithModel(
                  model: _model.certificateCardModel2,
                  updateCallback: () => setState(() {}),
                  child: CertificateCardWidget(),
                ),
                wrapWithModel(
                  model: _model.certificateCardModel3,
                  updateCallback: () => setState(() {}),
                  child: CertificateCardWidget(),
                ),
                wrapWithModel(
                  model: _model.certificateCardModel4,
                  updateCallback: () => setState(() {}),
                  child: CertificateCardWidget(),
                ),
                wrapWithModel(
                  model: _model.certificateCardModel5,
                  updateCallback: () => setState(() {}),
                  child: CertificateCardWidget(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
