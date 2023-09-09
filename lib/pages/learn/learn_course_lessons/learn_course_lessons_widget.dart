import '/components/audio_list_ongoing_widget.dart';
import '/components/audio_list_unplayed_widget.dart';
import '/components/completed_list_card_widget.dart';
import '/components/learn_course_hero_widget.dart';
import '/components/text_content_list_ongoing_widget.dart';
import '/components/text_content_list_unread_widget.dart';
import '/components/video_list_ongoing_widget.dart';
import '/components/video_list_unplayed_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'learn_course_lessons_model.dart';
export 'learn_course_lessons_model.dart';

class LearnCourseLessonsWidget extends StatefulWidget {
  const LearnCourseLessonsWidget({Key? key}) : super(key: key);

  @override
  _LearnCourseLessonsWidgetState createState() =>
      _LearnCourseLessonsWidgetState();
}

class _LearnCourseLessonsWidgetState extends State<LearnCourseLessonsWidget> {
  late LearnCourseLessonsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LearnCourseLessonsModel());
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
            'Learn',
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 399.0,
                  height: 170.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondary,
                  ),
                  child: wrapWithModel(
                    model: _model.learnCourseHeroModel,
                    updateCallback: () => setState(() {}),
                    child: LearnCourseHeroWidget(),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 70.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed('learnvVideo');
                          },
                          child: wrapWithModel(
                            model: _model.videoListUnplayedModel,
                            updateCallback: () => setState(() {}),
                            child: VideoListUnplayedWidget(),
                          ),
                        ),
                        wrapWithModel(
                          model: _model.completedListCardModel,
                          updateCallback: () => setState(() {}),
                          child: CompletedListCardWidget(),
                        ),
                        wrapWithModel(
                          model: _model.videoListOngoingModel,
                          updateCallback: () => setState(() {}),
                          child: VideoListOngoingWidget(),
                        ),
                        wrapWithModel(
                          model: _model.audioListUnplayedModel,
                          updateCallback: () => setState(() {}),
                          child: AudioListUnplayedWidget(),
                        ),
                        wrapWithModel(
                          model: _model.audioListOngoingModel,
                          updateCallback: () => setState(() {}),
                          child: AudioListOngoingWidget(),
                        ),
                        wrapWithModel(
                          model: _model.textContentListUnreadModel,
                          updateCallback: () => setState(() {}),
                          child: TextContentListUnreadWidget(),
                        ),
                        wrapWithModel(
                          model: _model.textContentListOngoingModel,
                          updateCallback: () => setState(() {}),
                          child: TextContentListOngoingWidget(),
                        ),
                      ],
                    ),
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
    );
  }
}
