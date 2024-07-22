import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/course_ad_plain_compo_widget.dart';
import '/components/explore_feature_widget.dart';
import '/components/learn_course_progress_widget.dart';
import '/components/no_data_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
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
import 'learn_page_model.dart';
export 'learn_page_model.dart';

class LearnPageWidget extends StatefulWidget {
  const LearnPageWidget({super.key});

  @override
  State<LearnPageWidget> createState() => _LearnPageWidgetState();
}

class _LearnPageWidgetState extends State<LearnPageWidget> {
  late LearnPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LearnPageModel());
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
            'Learn',
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
                        EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'New Courses',
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
                        EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                    child: FutureBuilder<ApiCallResponse>(
                      future: LXPLearningExperiencePortalGroup
                          .getAListOfCoursesByLearnerCall
                          .call(
                        scope: 'latest',
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
                        final rowGetAListOfCoursesByLearnerResponse =
                            snapshot.data!;

                        return Builder(
                          builder: (context) {
                            final newCourses = LXPLearningExperiencePortalGroup
                                    .getAListOfCoursesByLearnerCall
                                    .results(
                                      rowGetAListOfCoursesByLearnerResponse
                                          .jsonBody,
                                    )
                                    ?.toList() ??
                                [];
                            if (newCourses.isEmpty) {
                              return Container(
                                width: double.infinity,
                                child: NoDataWidget(
                                  message: 'No Courses found',
                                ),
                              );
                            }

                            return SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: List.generate(newCourses.length,
                                    (newCoursesIndex) {
                                  final newCoursesItem =
                                      newCourses[newCoursesIndex];
                                  return wrapWithModel(
                                    model: _model.courseAdPlainCompoModels
                                        .getModel(
                                      newCoursesIndex.toString(),
                                      newCoursesIndex,
                                    ),
                                    updateCallback: () => setState(() {}),
                                    child: CourseAdPlainCompoWidget(
                                      key: Key(
                                        'Keyfmm_${newCoursesIndex.toString()}',
                                      ),
                                      courseId: getJsonField(
                                        newCoursesItem,
                                        r'''$.courseId''',
                                      ).toString(),
                                      course: newCoursesItem,
                                      title: getJsonField(
                                        newCoursesItem,
                                        r'''$.name''',
                                      ).toString(),
                                    ),
                                  );
                                }).divide(SizedBox(width: 5.0)),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'My Courses',
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
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 15.0, 0.0, 8.0),
                          child: FlutterFlowChoiceChips(
                            options: functions
                                .convertCategoriesToList(
                                    FFAppState().categories)
                                .map((e) => e.toString())
                                .toList()
                                .map((label) => ChipData(label))
                                .toList(),
                            onChanged: (val) =>
                                setState(() => _model.choiceChipsValues = val),
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
                            multiselect: true,
                            initialized: _model.choiceChipsValues != null,
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
                        EdgeInsetsDirectional.fromSTEB(16.0, 25.0, 16.0, 0.0),
                    child: FutureBuilder<ApiCallResponse>(
                      future: LXPLearningExperiencePortalGroup
                          .getAListOfCoursesByLearnerCall
                          .call(
                        scope: 'enrolled',
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
                        final columnGetAListOfCoursesByLearnerResponse =
                            snapshot.data!;

                        return Builder(
                          builder: (context) {
                            final enrolledCourses =
                                LXPLearningExperiencePortalGroup
                                        .getAListOfCoursesByLearnerCall
                                        .results(
                                          columnGetAListOfCoursesByLearnerResponse
                                              .jsonBody,
                                        )
                                        ?.where((e) =>
                                            functions.filterByCategory(
                                                    _model.choiceChipsValues
                                                        ?.toList(),
                                                    getJsonField(
                                                      e,
                                                      r'''$.for.captions.categories''',
                                                      true,
                                                    ))
                                                ? true
                                                : false)
                                        .toList()
                                        ?.toList() ??
                                    [];
                            if (enrolledCourses.isEmpty) {
                              return Container(
                                width: double.infinity,
                                child: NoDataWidget(
                                  message: 'No Courses found',
                                ),
                              );
                            }

                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate(enrolledCourses.length,
                                  (enrolledCoursesIndex) {
                                final enrolledCoursesItem =
                                    enrolledCourses[enrolledCoursesIndex];
                                return wrapWithModel(
                                  model:
                                      _model.learnCourseProgressModels.getModel(
                                    enrolledCoursesIndex.toString(),
                                    enrolledCoursesIndex,
                                  ),
                                  updateCallback: () => setState(() {}),
                                  child: LearnCourseProgressWidget(
                                    key: Key(
                                      'Key0lq_${enrolledCoursesIndex.toString()}',
                                    ),
                                    courseId: getJsonField(
                                      enrolledCoursesItem,
                                      r'''$.for.id''',
                                    ).toString(),
                                    course: enrolledCoursesItem,
                                  ),
                                );
                              }).addToEnd(SizedBox(height: 100.0)),
                            );
                          },
                        );
                      },
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
          ),
        ),
      ),
    );
  }
}
