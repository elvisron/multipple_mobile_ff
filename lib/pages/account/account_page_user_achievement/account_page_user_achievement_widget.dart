import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/certificate_card_widget.dart';
import '/components/no_data_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'account_page_user_achievement_model.dart';
export 'account_page_user_achievement_model.dart';

class AccountPageUserAchievementWidget extends StatefulWidget {
  const AccountPageUserAchievementWidget({super.key});

  @override
  State<AccountPageUserAchievementWidget> createState() =>
      _AccountPageUserAchievementWidgetState();
}

class _AccountPageUserAchievementWidgetState
    extends State<AccountPageUserAchievementWidget> {
  late AccountPageUserAchievementModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AccountPageUserAchievementModel());
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
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
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
                  letterSpacing: 0.0,
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
                                    letterSpacing: 0.0,
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
                FutureBuilder<ApiCallResponse>(
                  future:
                      LXPLearningExperiencePortalGroup.getUserAccountCall.call(
                    lXPAuthToken: currentAuthenticationToken,
                    lXPAuthDevice: FFAppState().deviceId,
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 60.0,
                          height: 60.0,
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              FlutterFlowTheme.of(context).secondaryText,
                            ),
                          ),
                        ),
                      );
                    }
                    final columnGetUserAccountResponse = snapshot.data!;

                    return Builder(
                      builder: (context) {
                        final certificates =
                            LXPLearningExperiencePortalGroup.getUserAccountCall
                                    .certificates(
                                      columnGetUserAccountResponse.jsonBody,
                                    )
                                    ?.toList() ??
                                [];
                        if (certificates.isEmpty) {
                          return NoDataWidget(
                            message:
                                'complete a certified course to earn a certificate',
                          );
                        }

                        return Column(
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(certificates.length,
                              (certificatesIndex) {
                            final certificatesItem =
                                certificates[certificatesIndex];
                            return wrapWithModel(
                              model: _model.certificateCardModels1.getModel(
                                certificatesIndex.toString(),
                                certificatesIndex,
                              ),
                              updateCallback: () => setState(() {}),
                              child: CertificateCardWidget(
                                key: Key(
                                  'Keyte2_${certificatesIndex.toString()}',
                                ),
                                title: getJsonField(
                                  certificatesItem,
                                  r'''$.course_name''',
                                ).toString(),
                                issueDate: getJsonField(
                                  certificatesItem,
                                  r'''$.issue_date''',
                                ).toString(),
                              ),
                            );
                          }),
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
