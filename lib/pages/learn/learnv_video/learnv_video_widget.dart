import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'learnv_video_model.dart';
export 'learnv_video_model.dart';

class LearnvVideoWidget extends StatefulWidget {
  const LearnvVideoWidget({
    super.key,
    required this.module,
    this.videoSource,
    this.textContent,
    String? contentType,
    this.videoSourceType,
    this.poster,
    this.outline,
  }) : this.contentType = contentType ?? 'MVID';

  final dynamic module;
  final String? videoSource;
  final String? textContent;
  final String contentType;
  final String? videoSourceType;
  final String? poster;
  final List<dynamic>? outline;

  @override
  State<LearnvVideoWidget> createState() => _LearnvVideoWidgetState();
}

class _LearnvVideoWidgetState extends State<LearnvVideoWidget> {
  late LearnvVideoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LearnvVideoModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return YoutubeFullScreenWrapper(
      child: GestureDetector(
        onTap: () => _model.unfocusNode.canRequestFocus
            ? FocusScope.of(context).requestFocus(_model.unfocusNode)
            : FocusScope.of(context).unfocus(),
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
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
            title: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
              child: Text(
                'Learn ',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Inter',
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontSize: 22.0,
                      letterSpacing: 0.0,
                    ),
              ),
            ),
            actions: [],
            centerTitle: false,
            elevation: 0.0,
          ),
          body: SafeArea(
            top: true,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                if ((widget!.textContent == 'RTXT') &&
                    (widget!.poster != null && widget!.poster != ''))
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      widget!.poster!,
                      width: double.infinity,
                      height: 200.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                if ((widget!.videoSource != null &&
                        widget!.videoSource != '') &&
                    (widget!.videoSourceType != 'youtube'))
                  FlutterFlowVideoPlayer(
                    path: widget!.videoSource!,
                    videoType: VideoType.network,
                    autoPlay: false,
                    looping: true,
                    showControls: true,
                    allowFullScreen: true,
                    allowPlaybackSpeedMenu: false,
                  ),
                if ((widget!.videoSource != null &&
                        widget!.videoSource != '') &&
                    (widget!.videoSourceType == 'youtube'))
                  FlutterFlowYoutubePlayer(
                    url: widget!.videoSource!,
                    autoPlay: false,
                    looping: true,
                    mute: false,
                    showControls: true,
                    showFullScreen: true,
                    strictRelatedVideos: false,
                  ),
                Align(
                  alignment: AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (getJsonField(
                              widget!.module,
                              r'''$.title''',
                            ) !=
                            null)
                          Text(
                            getJsonField(
                              widget!.module,
                              r'''$.title''',
                            ).toString(),
                            style: FlutterFlowTheme.of(context)
                                .titleLarge
                                .override(
                                  fontFamily: 'Outfit',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        if (getJsonField(
                              widget!.module,
                              r'''$.description''',
                            ) !=
                            null)
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 5.0, 0.0, 0.0),
                            child: Text(
                              getJsonField(
                                widget!.module,
                                r'''$.description''',
                              ).toString(),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                        if (widget!.contentType == 'RTXT')
                          FlutterFlowWebView(
                            content: widget!.textContent!,
                            height: 500.0,
                            verticalScroll: false,
                            horizontalScroll: false,
                            html: true,
                          ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 36.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: FlutterFlowIconButton(
                              borderColor: FlutterFlowTheme.of(context).primary,
                              borderRadius: 50.0,
                              borderWidth: 1.0,
                              buttonSize: 50.0,
                              fillColor: FlutterFlowTheme.of(context).primary,
                              disabledColor:
                                  FlutterFlowTheme.of(context).tertiary,
                              disabledIconColor:
                                  FlutterFlowTheme.of(context).primary,
                              icon: Icon(
                                Icons.arrow_back_ios_new,
                                color: FlutterFlowTheme.of(context).info,
                                size: 24.0,
                              ),
                              onPressed: (true ==
                                      getJsonField(
                                        functions.isMoreLessons(
                                            widget!.outline?.toList(),
                                            getJsonField(
                                              widget!.module,
                                              r'''$.reference''',
                                            ).toString()),
                                        r'''$.isFirst''',
                                      ))
                                  ? null
                                  : () async {
                                      _model.moduleApiCopy =
                                          await LXPLearningExperiencePortalGroup
                                              .retrieveAnItemFromLibraryByLearnerCall
                                              .call(
                                        lXPAuthToken:
                                            currentAuthenticationToken,
                                        lXPAuthDevice: FFAppState().deviceId,
                                        ref: functions.getPrevioursLesson(
                                            widget!.outline!.toList(),
                                            getJsonField(
                                              widget!.module,
                                              r'''$.reference''',
                                            ).toString()),
                                      );

                                      if ((_model.moduleApiCopy?.succeeded ??
                                          true)) {
                                        _model.assetApiCopy =
                                            await LXPLearningExperiencePortalGroup
                                                .getDTFCourseDetailsCall
                                                .call(
                                          lXPAuthToken:
                                              currentAuthenticationToken,
                                          lXPAuthDevice: FFAppState().deviceId,
                                          decode: functions.isDecode(
                                              LXPLearningExperiencePortalGroup
                                                  .retrieveAnItemFromLibraryByLearnerCall
                                                  .type(
                                            (_model.moduleApiCopy?.jsonBody ??
                                                ''),
                                          )!),
                                          file: functions.getLatestAsset(
                                              LXPLearningExperiencePortalGroup
                                                  .retrieveAnItemFromLibraryByLearnerCall
                                                  .version(
                                                (_model.moduleApiCopy
                                                        ?.jsonBody ??
                                                    ''),
                                              ),
                                              LXPLearningExperiencePortalGroup
                                                  .retrieveAnItemFromLibraryByLearnerCall
                                                  .assets(
                                                (_model.moduleApiCopy
                                                        ?.jsonBody ??
                                                    ''),
                                              )),
                                        );

                                        if ((_model.assetApiCopy?.succeeded ??
                                            true)) {
                                          if (LXPLearningExperiencePortalGroup
                                                  .getDTFCourseDetailsCall
                                                  .sourceType(
                                                (_model.assetApiCopy
                                                        ?.jsonBody ??
                                                    ''),
                                              ) ==
                                              'youtube') {
                                            if (Navigator.of(context)
                                                .canPop()) {
                                              context.pop();
                                            }
                                            context.pushNamed(
                                              'learnvVideo',
                                              queryParameters: {
                                                'module': serializeParam(
                                                  LXPLearningExperiencePortalGroup
                                                      .retrieveAnItemFromLibraryByLearnerCall
                                                      .item(
                                                    (_model.moduleApiCopy
                                                            ?.jsonBody ??
                                                        ''),
                                                  ),
                                                  ParamType.JSON,
                                                ),
                                                'videoSource': serializeParam(
                                                  LXPLearningExperiencePortalGroup
                                                      .getDTFCourseDetailsCall
                                                      .dataSource(
                                                    (_model.assetApiCopy
                                                            ?.jsonBody ??
                                                        ''),
                                                  ),
                                                  ParamType.String,
                                                ),
                                                'textContent': serializeParam(
                                                  getJsonField(
                                                    (_model.assetApiCopy
                                                            ?.jsonBody ??
                                                        ''),
                                                    r'''$.result''',
                                                  ).toString(),
                                                  ParamType.String,
                                                ),
                                                'contentType': serializeParam(
                                                  LXPLearningExperiencePortalGroup
                                                      .retrieveAnItemFromLibraryByLearnerCall
                                                      .type(
                                                    (_model.moduleApiCopy
                                                            ?.jsonBody ??
                                                        ''),
                                                  ),
                                                  ParamType.String,
                                                ),
                                                'videoSourceType':
                                                    serializeParam(
                                                  LXPLearningExperiencePortalGroup
                                                      .getDTFCourseDetailsCall
                                                      .sourceType(
                                                    (_model.assetApiCopy
                                                            ?.jsonBody ??
                                                        ''),
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
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType.fade,
                                                ),
                                              },
                                            );
                                          } else {
                                            _model.vtsApiCopy =
                                                await GetVTSDataCall.call(
                                              url:
                                                  LXPLearningExperiencePortalGroup
                                                      .getDTFCourseDetailsCall
                                                      .dataSource(
                                                (_model.assetApiCopy
                                                        ?.jsonBody ??
                                                    ''),
                                              ),
                                            );

                                            if ((_model.vtsApiCopy?.succeeded ??
                                                true)) {
                                              if (Navigator.of(context)
                                                  .canPop()) {
                                                context.pop();
                                              }
                                              context.pushNamed(
                                                'learnvVideo',
                                                queryParameters: {
                                                  'module': serializeParam(
                                                    LXPLearningExperiencePortalGroup
                                                        .retrieveAnItemFromLibraryByLearnerCall
                                                        .item(
                                                      (_model.moduleApiCopy
                                                              ?.jsonBody ??
                                                          ''),
                                                    ),
                                                    ParamType.JSON,
                                                  ),
                                                  'videoSource': serializeParam(
                                                    GetVTSDataCall.originalUrl(
                                                      (_model.vtsApiCopy
                                                              ?.jsonBody ??
                                                          ''),
                                                    ),
                                                    ParamType.String,
                                                  ),
                                                  'textContent': serializeParam(
                                                    getJsonField(
                                                      (_model.assetApiCopy
                                                              ?.jsonBody ??
                                                          ''),
                                                      r'''$.result''',
                                                    ).toString(),
                                                    ParamType.String,
                                                  ),
                                                  'contentType': serializeParam(
                                                    LXPLearningExperiencePortalGroup
                                                        .retrieveAnItemFromLibraryByLearnerCall
                                                        .type(
                                                      (_model.moduleApiCopy
                                                              ?.jsonBody ??
                                                          ''),
                                                    ),
                                                    ParamType.String,
                                                  ),
                                                  'videoSourceType':
                                                      serializeParam(
                                                    LXPLearningExperiencePortalGroup
                                                        .getDTFCourseDetailsCall
                                                        .sourceType(
                                                      (_model.assetApiCopy
                                                              ?.jsonBody ??
                                                          ''),
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
                                                extra: <String, dynamic>{
                                                  kTransitionInfoKey:
                                                      TransitionInfo(
                                                    hasTransition: true,
                                                    transitionType:
                                                        PageTransitionType.fade,
                                                  ),
                                                },
                                              );
                                            } else {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                SnackBar(
                                                  content: Text(
                                                    'module completed',
                                                    style: TextStyle(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                    ),
                                                  ),
                                                  duration: Duration(
                                                      milliseconds: 4000),
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .success,
                                                ),
                                              );
                                            }
                                          }
                                        }
                                      }

                                      setState(() {});
                                    },
                            ),
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: AlignmentDirectional(1.0, 0.0),
                            child: FlutterFlowIconButton(
                              borderColor: FlutterFlowTheme.of(context).primary,
                              borderRadius: 50.0,
                              borderWidth: 1.0,
                              buttonSize: 50.0,
                              fillColor: FlutterFlowTheme.of(context).primary,
                              disabledColor:
                                  FlutterFlowTheme.of(context).tertiary,
                              disabledIconColor:
                                  FlutterFlowTheme.of(context).primary,
                              icon: Icon(
                                Icons.arrow_forward_ios,
                                color: FlutterFlowTheme.of(context).info,
                                size: 24.0,
                              ),
                              onPressed: (true ==
                                      getJsonField(
                                        functions.isMoreLessons(
                                            widget!.outline?.toList(),
                                            getJsonField(
                                              widget!.module,
                                              r'''$.reference''',
                                            ).toString()),
                                        r'''$.isLast''',
                                      ))
                                  ? null
                                  : () async {
                                      _model.moduleApi =
                                          await LXPLearningExperiencePortalGroup
                                              .retrieveAnItemFromLibraryByLearnerCall
                                              .call(
                                        lXPAuthToken:
                                            currentAuthenticationToken,
                                        lXPAuthDevice: FFAppState().deviceId,
                                        ref: functions.getNextLesson(
                                            widget!.outline!.toList(),
                                            getJsonField(
                                              widget!.module,
                                              r'''$.reference''',
                                            ).toString()),
                                      );

                                      if ((_model.moduleApi?.succeeded ??
                                          true)) {
                                        _model.assetApi =
                                            await LXPLearningExperiencePortalGroup
                                                .getDTFCourseDetailsCall
                                                .call(
                                          lXPAuthToken:
                                              currentAuthenticationToken,
                                          lXPAuthDevice: FFAppState().deviceId,
                                          decode: functions.isDecode(
                                              LXPLearningExperiencePortalGroup
                                                  .retrieveAnItemFromLibraryByLearnerCall
                                                  .type(
                                            (_model.moduleApi?.jsonBody ?? ''),
                                          )!),
                                          file: functions.getLatestAsset(
                                              LXPLearningExperiencePortalGroup
                                                  .retrieveAnItemFromLibraryByLearnerCall
                                                  .version(
                                                (_model.moduleApi?.jsonBody ??
                                                    ''),
                                              ),
                                              LXPLearningExperiencePortalGroup
                                                  .retrieveAnItemFromLibraryByLearnerCall
                                                  .assets(
                                                (_model.moduleApi?.jsonBody ??
                                                    ''),
                                              )),
                                        );

                                        if ((_model.assetApi?.succeeded ??
                                            true)) {
                                          if (LXPLearningExperiencePortalGroup
                                                  .getDTFCourseDetailsCall
                                                  .sourceType(
                                                (_model.assetApi?.jsonBody ??
                                                    ''),
                                              ) ==
                                              'youtube') {
                                            if (Navigator.of(context)
                                                .canPop()) {
                                              context.pop();
                                            }
                                            context.pushNamed(
                                              'learnvVideo',
                                              queryParameters: {
                                                'module': serializeParam(
                                                  LXPLearningExperiencePortalGroup
                                                      .retrieveAnItemFromLibraryByLearnerCall
                                                      .item(
                                                    (_model.moduleApi
                                                            ?.jsonBody ??
                                                        ''),
                                                  ),
                                                  ParamType.JSON,
                                                ),
                                                'videoSource': serializeParam(
                                                  LXPLearningExperiencePortalGroup
                                                      .getDTFCourseDetailsCall
                                                      .dataSource(
                                                    (_model.assetApi
                                                            ?.jsonBody ??
                                                        ''),
                                                  ),
                                                  ParamType.String,
                                                ),
                                                'textContent': serializeParam(
                                                  getJsonField(
                                                    (_model.moduleApi
                                                            ?.jsonBody ??
                                                        ''),
                                                    r'''$.result''',
                                                  ).toString(),
                                                  ParamType.String,
                                                ),
                                                'contentType': serializeParam(
                                                  LXPLearningExperiencePortalGroup
                                                      .retrieveAnItemFromLibraryByLearnerCall
                                                      .type(
                                                    (_model.moduleApi
                                                            ?.jsonBody ??
                                                        ''),
                                                  ),
                                                  ParamType.String,
                                                ),
                                                'videoSourceType':
                                                    serializeParam(
                                                  LXPLearningExperiencePortalGroup
                                                      .getDTFCourseDetailsCall
                                                      .sourceType(
                                                    (_model.assetApi
                                                            ?.jsonBody ??
                                                        ''),
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
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType.fade,
                                                ),
                                              },
                                            );
                                          } else {
                                            _model.vtsApi =
                                                await GetVTSDataCall.call(
                                              url:
                                                  LXPLearningExperiencePortalGroup
                                                      .getDTFCourseDetailsCall
                                                      .dataSource(
                                                (_model.assetApi?.jsonBody ??
                                                    ''),
                                              ),
                                            );

                                            if ((_model.vtsApi?.succeeded ??
                                                true)) {
                                              if (Navigator.of(context)
                                                  .canPop()) {
                                                context.pop();
                                              }
                                              context.pushNamed(
                                                'learnvVideo',
                                                queryParameters: {
                                                  'module': serializeParam(
                                                    LXPLearningExperiencePortalGroup
                                                        .retrieveAnItemFromLibraryByLearnerCall
                                                        .item(
                                                      (_model.moduleApi
                                                              ?.jsonBody ??
                                                          ''),
                                                    ),
                                                    ParamType.JSON,
                                                  ),
                                                  'videoSource': serializeParam(
                                                    GetVTSDataCall.originalUrl(
                                                      (_model.vtsApi
                                                              ?.jsonBody ??
                                                          ''),
                                                    ),
                                                    ParamType.String,
                                                  ),
                                                  'textContent': serializeParam(
                                                    getJsonField(
                                                      (_model.moduleApi
                                                              ?.jsonBody ??
                                                          ''),
                                                      r'''$.result''',
                                                    ).toString(),
                                                    ParamType.String,
                                                  ),
                                                  'contentType': serializeParam(
                                                    LXPLearningExperiencePortalGroup
                                                        .retrieveAnItemFromLibraryByLearnerCall
                                                        .type(
                                                      (_model.moduleApi
                                                              ?.jsonBody ??
                                                          ''),
                                                    ),
                                                    ParamType.String,
                                                  ),
                                                  'videoSourceType':
                                                      serializeParam(
                                                    LXPLearningExperiencePortalGroup
                                                        .retrieveAnItemFromLibraryByLearnerCall
                                                        .type(
                                                      (_model.moduleApi
                                                              ?.jsonBody ??
                                                          ''),
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
                                                extra: <String, dynamic>{
                                                  kTransitionInfoKey:
                                                      TransitionInfo(
                                                    hasTransition: true,
                                                    transitionType:
                                                        PageTransitionType.fade,
                                                  ),
                                                },
                                              );
                                            } else {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                SnackBar(
                                                  content: Text(
                                                    'module completed',
                                                    style: TextStyle(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                    ),
                                                  ),
                                                  duration: Duration(
                                                      milliseconds: 4000),
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .success,
                                                ),
                                              );
                                            }
                                          }
                                        }
                                      }

                                      setState(() {});
                                    },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ].addToEnd(SizedBox(height: 58.0)),
            ),
          ),
        ),
      ),
    );
  }
}
