import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'course_ad_plain_compo_model.dart';
export 'course_ad_plain_compo_model.dart';

class CourseAdPlainCompoWidget extends StatefulWidget {
  const CourseAdPlainCompoWidget({
    super.key,
    this.course,
    this.courseId,
    this.title,
  });

  final dynamic course;
  final String? courseId;
  final String? title;

  @override
  State<CourseAdPlainCompoWidget> createState() =>
      _CourseAdPlainCompoWidgetState();
}

class _CourseAdPlainCompoWidgetState extends State<CourseAdPlainCompoWidget> {
  late CourseAdPlainCompoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CourseAdPlainCompoModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        _model.apiResultxz8 = await LXPLearningExperiencePortalGroup
            .retreiveACourseInformationByLearnerCall
            .call(
          id: widget!.courseId,
          lXPAuthToken: currentAuthenticationToken,
          lXPAuthDevice: FFAppState().deviceId,
        );

        if ((_model.apiResultxz8?.succeeded ?? true)) {
          context.pushNamed(
            'learnCourseInfo',
            queryParameters: {
              'courseId': serializeParam(
                widget!.courseId,
                ParamType.String,
              ),
              'course': serializeParam(
                LXPLearningExperiencePortalGroup
                    .retreiveACourseInformationByLearnerCall
                    .course(
                  (_model.apiResultxz8?.jsonBody ?? ''),
                ),
                ParamType.JSON,
              ),
            }.withoutNulls,
          );
        }

        setState(() {});
      },
      child: Container(
        width: 340.0,
        height: 100.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondary,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: Image.network(
              '',
            ).image,
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget!.title!.maybeHandleOverflow(
                          maxChars: 35,
                          replacement: '…',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              letterSpacing: 0.0,
                            ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-1.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 9.0, 0.0, 0.0),
                          child: Container(
                            width: 100.0,
                            height: 22.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).secondaryText,
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Text(
                              '10:25',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context).accent4,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Align(
                      alignment: AlignmentDirectional(1.0, 0.0),
                      child: FaIcon(
                        FontAwesomeIcons.solidPlayCircle,
                        color: Colors.white,
                        size: 40.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
