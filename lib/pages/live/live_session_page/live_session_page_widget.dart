import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/explore_feature_widget.dart';
import '/components/happening_card_widget.dart';
import '/components/live_session_long_card_widget.dart';
import '/components/no_data_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'live_session_page_model.dart';
export 'live_session_page_model.dart';

class LiveSessionPageWidget extends StatefulWidget {
  const LiveSessionPageWidget({super.key});

  @override
  State<LiveSessionPageWidget> createState() => _LiveSessionPageWidgetState();
}

class _LiveSessionPageWidgetState extends State<LiveSessionPageWidget> {
  late LiveSessionPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LiveSessionPageModel());
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
            'Live Session',
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
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  wrapWithModel(
                    model: _model.exploreFeatureModel,
                    updateCallback: () => setState(() {}),
                    child: ExploreFeatureWidget(),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Happenings',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                    child: Container(
                      width: double.infinity,
                      height: 168.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                      ),
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: FutureBuilder<ApiCallResponse>(
                        future: LXPLearningExperiencePortalGroup
                            .getAListOfSessionsCall
                            .call(
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
                          final listViewGetAListOfSessionsResponse =
                              snapshot.data!;

                          return Builder(
                            builder: (context) {
                              final liveSessions =
                                  LXPLearningExperiencePortalGroup
                                          .getAListOfSessionsCall
                                          .sessions(
                                            listViewGetAListOfSessionsResponse
                                                .jsonBody,
                                          )
                                          ?.toList() ??
                                      [];
                              if (liveSessions.isEmpty) {
                                return Container(
                                  width: double.infinity,
                                  child: NoDataWidget(
                                    message: 'No Live Sessions Happening',
                                  ),
                                );
                              }

                              return ListView.separated(
                                padding: EdgeInsets.fromLTRB(
                                  16.0,
                                  0,
                                  16.0,
                                  0,
                                ),
                                scrollDirection: Axis.horizontal,
                                itemCount: liveSessions.length,
                                separatorBuilder: (_, __) =>
                                    SizedBox(width: 12.0),
                                itemBuilder: (context, liveSessionsIndex) {
                                  final liveSessionsItem =
                                      liveSessions[liveSessionsIndex];
                                  return wrapWithModel(
                                    model: _model.happeningCardModels1.getModel(
                                      liveSessionsIndex.toString(),
                                      liveSessionsIndex,
                                    ),
                                    updateCallback: () => setState(() {}),
                                    child: HappeningCardWidget(
                                      key: Key(
                                        'Keyfja_${liveSessionsIndex.toString()}',
                                      ),
                                      topic: getJsonField(
                                        liveSessionsItem,
                                        r'''$.topic''',
                                      ).toString(),
                                      meetingUrl: getJsonField(
                                        liveSessionsItem,
                                        r'''$.provider.details.start_url''',
                                      ).toString(),
                                    ),
                                  );
                                },
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Top Sessions',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                    child: Container(
                      width: double.infinity,
                      height: 54.0,
                      decoration: BoxDecoration(),
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: FutureBuilder<ApiCallResponse>(
                        future: LXPLearningExperiencePortalGroup
                            .getAListOfSessionsCall
                            .call(
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
                          final listViewGetAListOfSessionsResponse =
                              snapshot.data!;

                          return Builder(
                            builder: (context) {
                              final topSessions = functions
                                  .getActiveMeetings(
                                      LXPLearningExperiencePortalGroup
                                          .getAListOfSessionsCall
                                          .sessions(
                                            listViewGetAListOfSessionsResponse
                                                .jsonBody,
                                          )!
                                          .toList())
                                  .toList();

                              return ListView.separated(
                                padding: EdgeInsets.fromLTRB(
                                  16.0,
                                  0,
                                  16.0,
                                  0,
                                ),
                                scrollDirection: Axis.horizontal,
                                itemCount: topSessions.length,
                                separatorBuilder: (_, __) =>
                                    SizedBox(width: 12.0),
                                itemBuilder: (context, topSessionsIndex) {
                                  final topSessionsItem =
                                      topSessions[topSessionsIndex];
                                  return FFButtonWidget(
                                    onPressed: () async {
                                      await launchURL(getJsonField(
                                        topSessionsItem,
                                        r'''$.provider.details.start_url''',
                                      ).toString());
                                    },
                                    text: getJsonField(
                                      topSessionsItem,
                                      r'''$.topic''',
                                    ).toString(),
                                    icon: FaIcon(
                                      FontAwesomeIcons.solidPlayCircle,
                                      size: 35.0,
                                    ),
                                    options: FFButtonOptions(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24.0, 2.0, 24.0, 8.0),
                                      iconPadding: EdgeInsets.all(7.0),
                                      color:
                                          FlutterFlowTheme.of(context).tertiary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 0.0,
                                      ),
                                      borderRadius: BorderRadius.circular(50.0),
                                    ),
                                  );
                                },
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 25.0, 16.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Upcoming Sessions',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                        Flexible(
                          child: Align(
                            alignment: AlignmentDirectional(1.0, 0.0),
                            child: FlutterFlowDropDown<String>(
                              controller: _model.dropDownValueController ??=
                                  FormFieldController<String>(
                                _model.dropDownValue ??= 'Today',
                              ),
                              options: ['Today', 'This week', 'This month'],
                              onChanged: (val) =>
                                  setState(() => _model.dropDownValue = val),
                              width: 100.0,
                              height: 33.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              hintText: 'Sort',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              elevation: 2.0,
                              borderColor: FlutterFlowTheme.of(context).primary,
                              borderWidth: 2.0,
                              borderRadius: 8.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 4.0, 16.0, 4.0),
                              hidesUnderline: true,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                    child: Container(
                      width: double.infinity,
                      height: 351.0,
                      decoration: BoxDecoration(),
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: FutureBuilder<ApiCallResponse>(
                        future: LXPLearningExperiencePortalGroup
                            .getAListOfSessionsCall
                            .call(
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
                          final listViewGetAListOfSessionsResponse =
                              snapshot.data!;

                          return Builder(
                            builder: (context) {
                              final sessions = functions
                                  .getActiveMeetings(
                                      LXPLearningExperiencePortalGroup
                                          .getAListOfSessionsCall
                                          .sessions(
                                            listViewGetAListOfSessionsResponse
                                                .jsonBody,
                                          )!
                                          .toList())
                                  .toList();
                              if (sessions.isEmpty) {
                                return Container(
                                  width: double.infinity,
                                  child: NoDataWidget(
                                    message: 'No Live Sessions ',
                                  ),
                                );
                              }

                              return ListView.separated(
                                padding: EdgeInsets.fromLTRB(
                                  16.0,
                                  0,
                                  16.0,
                                  0,
                                ),
                                scrollDirection: Axis.horizontal,
                                itemCount: sessions.length,
                                separatorBuilder: (_, __) =>
                                    SizedBox(width: 12.0),
                                itemBuilder: (context, sessionsIndex) {
                                  final sessionsItem = sessions[sessionsIndex];
                                  return wrapWithModel(
                                    model: _model.liveSessionLongCardModels1
                                        .getModel(
                                      sessionsIndex.toString(),
                                      sessionsIndex,
                                    ),
                                    updateCallback: () => setState(() {}),
                                    child: LiveSessionLongCardWidget(
                                      key: Key(
                                        'Key1po_${sessionsIndex.toString()}',
                                      ),
                                      title: getJsonField(
                                        sessionsItem,
                                        r'''$.topic''',
                                      ).toString(),
                                      meetingUrl: getJsonField(
                                        sessionsItem,
                                        r'''$.provider.details.start_url''',
                                      ).toString(),
                                    ),
                                  );
                                },
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  Divider(
                    height: 8.0,
                    thickness: 1.0,
                    color: FlutterFlowTheme.of(context).alternate,
                  ),
                ].addToEnd(SizedBox(height: 58.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
