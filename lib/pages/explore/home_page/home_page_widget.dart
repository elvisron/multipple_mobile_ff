import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/explore_card_with_module_widget.dart';
import '/components/explore_feature_widget.dart';
import '/components/live_session_long_card_widget.dart';
import '/components/no_data_widget.dart';
import '/components/stacked_card_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResultm8e = await LXPLearningExperiencePortalGroup
          .retrieveTenantInformationCall
          .call();

      if ((_model.apiResultm8e?.succeeded ?? true)) {
        FFAppState().categories = LXPLearningExperiencePortalGroup
            .retrieveTenantInformationCall
            .categories(
          (_model.apiResultm8e?.jsonBody ?? ''),
        );
        setState(() {});
      }
    });
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
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80.0),
          child: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            automaticallyImplyLeading: false,
            title: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Good day,',
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily: 'Outfit',
                          fontSize: 21.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                  Text(
                    getJsonField(
                      FFAppState().user,
                      r'''$.first_name''',
                    ).toString(),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          fontSize: 30.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ],
              ),
            ),
            actions: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 15.0, 6.0),
                child: Container(
                  width: 53.0,
                  height: 53.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).accent1,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).alternate,
                      width: 2.0,
                    ),
                  ),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed('accountPage');
                    },
                    child: Container(
                      width: 120.0,
                      height: 120.0,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.network(
                        getJsonField(
                          FFAppState().user,
                          r'''$.photo''',
                        ).toString(),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ],
            centerTitle: false,
            toolbarHeight: 80.0,
            elevation: 0.0,
          ),
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
                          'Categories',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: Color(0xFF1550E7),
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 8.0),
                          child: FlutterFlowChoiceChips(
                            options: functions
                                .convertCategoriesToList(
                                    FFAppState().categories)
                                .map((e) => e.toString())
                                .toList()
                                .map((label) => ChipData(label))
                                .toList(),
                            onChanged: (val) async {
                              setState(() =>
                                  _model.choiceChipsValue = val?.firstOrNull);
                              context.pushNamed('homeCategories');
                            },
                            selectedChipStyle: ChipStyle(
                              backgroundColor:
                                  FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context).info,
                                    letterSpacing: 0.0,
                                  ),
                              iconColor: FlutterFlowTheme.of(context).info,
                              iconSize: 18.0,
                              elevation: 2.0,
                              borderColor: FlutterFlowTheme.of(context).accent1,
                              borderWidth: 1.0,
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            unselectedChipStyle: ChipStyle(
                              backgroundColor:
                                  FlutterFlowTheme.of(context).alternate,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    letterSpacing: 0.0,
                                  ),
                              iconColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                              iconSize: 18.0,
                              elevation: 0.0,
                              borderColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              borderWidth: 1.0,
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            chipSpacing: 8.0,
                            rowSpacing: 12.0,
                            multiselect: false,
                            alignment: WrapAlignment.start,
                            controller: _model.choiceChipsValueController ??=
                                FormFieldController<List<String>>(
                              [],
                            ),
                            wrapped: true,
                          ),
                        ),
                      ]
                          .addToStart(SizedBox(width: 16.0))
                          .addToEnd(SizedBox(width: 16.0)),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Recently Added',
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
                      height: 170.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                      ),
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: FutureBuilder<ApiCallResponse>(
                          future: LXPLearningExperiencePortalGroup
                              .getAListOfCoursesByLearnerCall
                              .call(
                            limit: 6,
                            lXPAuthToken: currentAuthenticationToken,
                            scope: 'latest',
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
                                      FlutterFlowTheme.of(context)
                                          .secondaryText,
                                    ),
                                  ),
                                ),
                              );
                            }
                            final listViewGetAListOfCoursesByLearnerResponse =
                                snapshot.data!;

                            return Builder(
                              builder: (context) {
                                final latestCourses =
                                    LXPLearningExperiencePortalGroup
                                            .getAListOfCoursesByLearnerCall
                                            .results(
                                              listViewGetAListOfCoursesByLearnerResponse
                                                  .jsonBody,
                                            )
                                            ?.toList() ??
                                        [];
                                if (latestCourses.isEmpty) {
                                  return Container(
                                    width: double.infinity,
                                    child: NoDataWidget(
                                      message: 'No Courses found',
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
                                  itemCount: latestCourses.length,
                                  separatorBuilder: (_, __) =>
                                      SizedBox(width: 12.0),
                                  itemBuilder: (context, latestCoursesIndex) {
                                    final latestCoursesItem =
                                        latestCourses[latestCoursesIndex];
                                    return wrapWithModel(
                                      model: _model.stackedCardModels.getModel(
                                        latestCoursesIndex.toString(),
                                        latestCoursesIndex,
                                      ),
                                      updateCallback: () => setState(() {}),
                                      child: StackedCardWidget(
                                        key: Key(
                                          'Keyjbv_${latestCoursesIndex.toString()}',
                                        ),
                                        title: getJsonField(
                                          latestCoursesItem,
                                          r'''$.name''',
                                        ).toString(),
                                        courseId: getJsonField(
                                          latestCoursesItem,
                                          r'''$.courseId''',
                                        ).toString(),
                                        course: latestCoursesItem,
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
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Suggested for you',
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
                      height: 351.0,
                      decoration: BoxDecoration(),
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: FutureBuilder<ApiCallResponse>(
                        future: LXPLearningExperiencePortalGroup
                            .getAListOfCoursesByLearnerCall
                            .call(
                          scope: 'explore',
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
                          final listViewGetAListOfCoursesByLearnerResponse =
                              snapshot.data!;

                          return Builder(
                            builder: (context) {
                              final exploreCourses =
                                  LXPLearningExperiencePortalGroup
                                          .getAListOfCoursesByLearnerCall
                                          .results(
                                            listViewGetAListOfCoursesByLearnerResponse
                                                .jsonBody,
                                          )
                                          ?.toList() ??
                                      [];
                              if (exploreCourses.isEmpty) {
                                return Container(
                                  width: double.infinity,
                                  child: NoDataWidget(
                                    message: 'No Courses found',
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
                                itemCount: exploreCourses.length,
                                separatorBuilder: (_, __) =>
                                    SizedBox(width: 12.0),
                                itemBuilder: (context, exploreCoursesIndex) {
                                  final exploreCoursesItem =
                                      exploreCourses[exploreCoursesIndex];
                                  return wrapWithModel(
                                    model: _model.exploreCardWithModuleModels1
                                        .getModel(
                                      getJsonField(
                                        exploreCoursesItem,
                                        r'''$.courseId''',
                                      ).toString(),
                                      exploreCoursesIndex,
                                    ),
                                    updateCallback: () => setState(() {}),
                                    child: ExploreCardWithModuleWidget(
                                      key: Key(
                                        'Keyhjk_${getJsonField(
                                          exploreCoursesItem,
                                          r'''$.courseId''',
                                        ).toString()}',
                                      ),
                                      title: getJsonField(
                                        exploreCoursesItem,
                                        r'''$.name''',
                                      ).toString(),
                                      totalModules: functions
                                          .getTotalModules((getJsonField(
                                        exploreCoursesItem,
                                        r'''$.outlines''',
                                        true,
                                      ) as List)
                                              .map<String>((s) => s.toString())
                                              .toList()!),
                                      courseId: getJsonField(
                                        exploreCoursesItem,
                                        r'''$.courseId''',
                                      ).toString(),
                                      course: exploreCoursesItem,
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
                          'Popular Courses',
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
                      height: 351.0,
                      decoration: BoxDecoration(),
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: FutureBuilder<ApiCallResponse>(
                        future: LXPLearningExperiencePortalGroup
                            .getAListOfCoursesByLearnerCall
                            .call(
                          limit: 10,
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
                          final listViewGetAListOfCoursesByLearnerResponse =
                              snapshot.data!;

                          return Builder(
                            builder: (context) {
                              final popularCourses =
                                  LXPLearningExperiencePortalGroup
                                          .getAListOfCoursesByLearnerCall
                                          .results(
                                            listViewGetAListOfCoursesByLearnerResponse
                                                .jsonBody,
                                          )
                                          ?.toList() ??
                                      [];
                              if (popularCourses.isEmpty) {
                                return Center(
                                  child: Container(
                                    width: double.infinity,
                                    child: NoDataWidget(
                                      message: 'No Courses found',
                                    ),
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
                                itemCount: popularCourses.length,
                                separatorBuilder: (_, __) =>
                                    SizedBox(width: 12.0),
                                itemBuilder: (context, popularCoursesIndex) {
                                  final popularCoursesItem =
                                      popularCourses[popularCoursesIndex];
                                  return wrapWithModel(
                                    model: _model.exploreCardWithModuleModels2
                                        .getModel(
                                      popularCoursesIndex.toString(),
                                      popularCoursesIndex,
                                    ),
                                    updateCallback: () => setState(() {}),
                                    child: ExploreCardWithModuleWidget(
                                      key: Key(
                                        'Keyu51_${popularCoursesIndex.toString()}',
                                      ),
                                      title: getJsonField(
                                        popularCoursesItem,
                                        r'''$.name''',
                                      ).toString(),
                                      totalModules: functions
                                          .getTotalModules((getJsonField(
                                        popularCoursesItem,
                                        r'''$.outlines''',
                                        true,
                                      ) as List)
                                              .map<String>((s) => s.toString())
                                              .toList()!),
                                      courseId: getJsonField(
                                        popularCoursesItem,
                                        r'''$.courseId''',
                                      ).toString(),
                                      course: popularCoursesItem,
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
                          'Live Sessions',
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
                              final liveSessions = functions
                                  .getActiveMeetings(
                                      LXPLearningExperiencePortalGroup
                                          .getAListOfSessionsCall
                                          .sessions(
                                            listViewGetAListOfSessionsResponse
                                                .jsonBody,
                                          )!
                                          .toList())
                                  .toList();
                              if (liveSessions.isEmpty) {
                                return Container(
                                  width: double.infinity,
                                  child: NoDataWidget(
                                    message: 'No Live Seesions available',
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
                                    model: _model.liveSessionLongCardModels
                                        .getModel(
                                      liveSessionsIndex.toString(),
                                      liveSessionsIndex,
                                    ),
                                    updateCallback: () => setState(() {}),
                                    child: LiveSessionLongCardWidget(
                                      key: Key(
                                        'Keynmz_${liveSessionsIndex.toString()}',
                                      ),
                                      title: getJsonField(
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
