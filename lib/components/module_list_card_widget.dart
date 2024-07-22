import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'module_list_card_model.dart';
export 'module_list_card_model.dart';

class ModuleListCardWidget extends StatefulWidget {
  const ModuleListCardWidget({
    super.key,
    this.title,
    this.ref,
    this.courseId,
    this.description,
    this.version,
    this.type,
    this.module,
    this.poster,
    this.outline,
  });

  final String? title;
  final String? ref;
  final String? courseId;
  final String? description;
  final int? version;
  final String? type;
  final dynamic module;
  final String? poster;
  final List<dynamic>? outline;

  @override
  State<ModuleListCardWidget> createState() => _ModuleListCardWidgetState();
}

class _ModuleListCardWidgetState extends State<ModuleListCardWidget>
    with TickerProviderStateMixin {
  late ModuleListCardModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ModuleListCardModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 30.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          if (functions.checkEnrollment(
                  FFAppState().enrolments.toList(), widget!.courseId!) ==
              true) {
            if (widget!.type == 'module') {
              context.pushNamed(
                'learnCourseInfo',
                queryParameters: {
                  'courseId': serializeParam(
                    widget!.courseId,
                    ParamType.String,
                  ),
                  'course': serializeParam(
                    widget!.module,
                    ParamType.JSON,
                  ),
                }.withoutNulls,
              );
            } else {
              _model.moduleApi = await LXPLearningExperiencePortalGroup
                  .retrieveAnItemFromLibraryByLearnerCall
                  .call(
                lXPAuthToken: currentAuthenticationToken,
                lXPAuthDevice: FFAppState().deviceId,
                ref: widget!.ref,
              );

              if ((_model.moduleApi?.succeeded ?? true)) {
                _model.assetApi = await LXPLearningExperiencePortalGroup
                    .getDTFCourseDetailsCall
                    .call(
                  lXPAuthToken: currentAuthenticationToken,
                  lXPAuthDevice: FFAppState().deviceId,
                  decode: functions.isDecode(getJsonField(
                    widget!.module,
                    r'''$.type''',
                  ).toString()),
                  file: functions.getLatestAsset(
                      getJsonField(
                        LXPLearningExperiencePortalGroup
                            .retrieveAnItemFromLibraryByLearnerCall
                            .item(
                          (_model.moduleApi?.jsonBody ?? ''),
                        ),
                        r'''$.version''',
                      ),
                      LXPLearningExperiencePortalGroup
                          .retrieveAnItemFromLibraryByLearnerCall
                          .assets(
                        (_model.moduleApi?.jsonBody ?? ''),
                      )),
                );

                if ((_model.assetApi?.succeeded ?? true)) {
                  if (LXPLearningExperiencePortalGroup.getDTFCourseDetailsCall
                          .sourceType(
                        (_model.assetApi?.jsonBody ?? ''),
                      ) ==
                      'youtube') {
                    context.pushNamed(
                      'learnvVideo',
                      queryParameters: {
                        'module': serializeParam(
                          LXPLearningExperiencePortalGroup
                              .retrieveAnItemFromLibraryByLearnerCall
                              .item(
                            (_model.moduleApi?.jsonBody ?? ''),
                          ),
                          ParamType.JSON,
                        ),
                        'videoSource': serializeParam(
                          LXPLearningExperiencePortalGroup
                              .getDTFCourseDetailsCall
                              .dataSource(
                            (_model.assetApi?.jsonBody ?? ''),
                          ),
                          ParamType.String,
                        ),
                        'textContent': serializeParam(
                          getJsonField(
                            (_model.assetApi?.jsonBody ?? ''),
                            r'''$.result''',
                          ).toString(),
                          ParamType.String,
                        ),
                        'contentType': serializeParam(
                          LXPLearningExperiencePortalGroup
                              .retrieveAnItemFromLibraryByLearnerCall
                              .type(
                            (_model.moduleApi?.jsonBody ?? ''),
                          ),
                          ParamType.String,
                        ),
                        'videoSourceType': serializeParam(
                          LXPLearningExperiencePortalGroup
                              .getDTFCourseDetailsCall
                              .sourceType(
                            (_model.assetApi?.jsonBody ?? ''),
                          ),
                          ParamType.String,
                        ),
                        'poster': serializeParam(
                          widget!.poster,
                          ParamType.String,
                        ),
                        'outline': serializeParam(
                          widget!.outline,
                          ParamType.JSON,
                          isList: true,
                        ),
                      }.withoutNulls,
                    );
                  } else {
                    _model.vtsApi = await GetVTSDataCall.call(
                      url: LXPLearningExperiencePortalGroup
                          .getDTFCourseDetailsCall
                          .dataSource(
                        (_model.assetApi?.jsonBody ?? ''),
                      ),
                    );

                    if ((_model.vtsApi?.succeeded ?? true)) {
                      context.pushNamed(
                        'learnvVideo',
                        queryParameters: {
                          'module': serializeParam(
                            LXPLearningExperiencePortalGroup
                                .retrieveAnItemFromLibraryByLearnerCall
                                .item(
                              (_model.moduleApi?.jsonBody ?? ''),
                            ),
                            ParamType.JSON,
                          ),
                          'videoSource': serializeParam(
                            GetVTSDataCall.originalUrl(
                              (_model.vtsApi?.jsonBody ?? ''),
                            ),
                            ParamType.String,
                          ),
                          'textContent': serializeParam(
                            getJsonField(
                              (_model.assetApi?.jsonBody ?? ''),
                              r'''$.result''',
                            ).toString(),
                            ParamType.String,
                          ),
                          'contentType': serializeParam(
                            LXPLearningExperiencePortalGroup
                                .retrieveAnItemFromLibraryByLearnerCall
                                .type(
                              (_model.moduleApi?.jsonBody ?? ''),
                            ),
                            ParamType.String,
                          ),
                          'videoSourceType': serializeParam(
                            LXPLearningExperiencePortalGroup
                                .getDTFCourseDetailsCall
                                .sourceType(
                              (_model.assetApi?.jsonBody ?? ''),
                            ),
                            ParamType.String,
                          ),
                          'poster': serializeParam(
                            widget!.poster,
                            ParamType.String,
                          ),
                          'outline': serializeParam(
                            widget!.outline,
                            ParamType.JSON,
                            isList: true,
                          ),
                        }.withoutNulls,
                      );
                    }
                  }
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'could not load this module',
                        style: TextStyle(
                          color: FlutterFlowTheme.of(context).info,
                        ),
                      ),
                      duration: Duration(milliseconds: 4000),
                      backgroundColor: FlutterFlowTheme.of(context).error,
                    ),
                  );
                }
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      'unable to load module',
                      style: TextStyle(
                        color: FlutterFlowTheme.of(context).info,
                      ),
                    ),
                    duration: Duration(milliseconds: 4000),
                    backgroundColor: FlutterFlowTheme.of(context).error,
                  ),
                );
              }
            }
          }

          setState(() {});
        },
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondary,
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(
              color: Colors.white,
              width: 0.0,
            ),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12.0, 5.0, 12.0, 5.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget!.title!,
                          style: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .override(
                                fontFamily: 'Outfit',
                                color: Color(0xFFF3FCFF),
                                fontSize: 18.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                        if (widget!.description != null &&
                            widget!.description != '')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 4.0, 0.0, 0.0),
                            child: Text(
                              widget!.description!,
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
                if (functions.checkEnrollment(
                        FFAppState().enrolments.toList(), widget!.courseId!) ==
                    true)
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xFFE6E6E6),
                    size: 40.0,
                  ),
              ],
            ),
          ),
        ),
      ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
    );
  }
}
