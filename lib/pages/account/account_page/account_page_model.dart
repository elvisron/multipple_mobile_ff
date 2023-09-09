import '/components/dashboard_user_activity_stats_widget.dart';
import '/components/user_profile_card_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AccountPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for dashboardUserActivityStats component.
  late DashboardUserActivityStatsModel dashboardUserActivityStatsModel1;
  // Model for dashboardUserActivityStats component.
  late DashboardUserActivityStatsModel dashboardUserActivityStatsModel2;
  // Model for dashboardUserActivityStats component.
  late DashboardUserActivityStatsModel dashboardUserActivityStatsModel3;
  // Model for dashboardUserActivityStats component.
  late DashboardUserActivityStatsModel dashboardUserActivityStatsModel4;
  // Model for userProfileCard component.
  late UserProfileCardModel userProfileCardModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    dashboardUserActivityStatsModel1 =
        createModel(context, () => DashboardUserActivityStatsModel());
    dashboardUserActivityStatsModel2 =
        createModel(context, () => DashboardUserActivityStatsModel());
    dashboardUserActivityStatsModel3 =
        createModel(context, () => DashboardUserActivityStatsModel());
    dashboardUserActivityStatsModel4 =
        createModel(context, () => DashboardUserActivityStatsModel());
    userProfileCardModel = createModel(context, () => UserProfileCardModel());
  }

  void dispose() {
    unfocusNode.dispose();
    dashboardUserActivityStatsModel1.dispose();
    dashboardUserActivityStatsModel2.dispose();
    dashboardUserActivityStatsModel3.dispose();
    dashboardUserActivityStatsModel4.dispose();
    userProfileCardModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
