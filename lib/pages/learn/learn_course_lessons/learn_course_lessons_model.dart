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

class LearnCourseLessonsModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for learnCourseHero component.
  late LearnCourseHeroModel learnCourseHeroModel;
  // Model for videoListUnplayed component.
  late VideoListUnplayedModel videoListUnplayedModel;
  // Model for completedListCard component.
  late CompletedListCardModel completedListCardModel;
  // Model for videoListOngoing component.
  late VideoListOngoingModel videoListOngoingModel;
  // Model for audioListUnplayed component.
  late AudioListUnplayedModel audioListUnplayedModel;
  // Model for audioListOngoing component.
  late AudioListOngoingModel audioListOngoingModel;
  // Model for textContentListUnread component.
  late TextContentListUnreadModel textContentListUnreadModel;
  // Model for textContentListOngoing component.
  late TextContentListOngoingModel textContentListOngoingModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    learnCourseHeroModel = createModel(context, () => LearnCourseHeroModel());
    videoListUnplayedModel =
        createModel(context, () => VideoListUnplayedModel());
    completedListCardModel =
        createModel(context, () => CompletedListCardModel());
    videoListOngoingModel = createModel(context, () => VideoListOngoingModel());
    audioListUnplayedModel =
        createModel(context, () => AudioListUnplayedModel());
    audioListOngoingModel = createModel(context, () => AudioListOngoingModel());
    textContentListUnreadModel =
        createModel(context, () => TextContentListUnreadModel());
    textContentListOngoingModel =
        createModel(context, () => TextContentListOngoingModel());
  }

  void dispose() {
    unfocusNode.dispose();
    learnCourseHeroModel.dispose();
    videoListUnplayedModel.dispose();
    completedListCardModel.dispose();
    videoListOngoingModel.dispose();
    audioListUnplayedModel.dispose();
    audioListOngoingModel.dispose();
    textContentListUnreadModel.dispose();
    textContentListOngoingModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
