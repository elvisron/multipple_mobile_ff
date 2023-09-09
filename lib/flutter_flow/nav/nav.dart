import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  bool showSplashImage = true;

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) => appStateNotifier.showSplashImage
          ? Builder(
              builder: (context) => Container(
                color: Colors.transparent,
                child: Image.asset(
                  'assets/images/Multipple-Screen.png',
                  fit: BoxFit.cover,
                ),
              ),
            )
          : NavBarPage(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.showSplashImage
              ? Builder(
                  builder: (context) => Container(
                    color: Colors.transparent,
                    child: Image.asset(
                      'assets/images/Multipple-Screen.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              : NavBarPage(),
        ),
        FFRoute(
          name: 'onboard',
          path: '/onboard',
          builder: (context, params) => OnboardWidget(),
        ),
        FFRoute(
          name: 'LoginAndSignup',
          path: '/loginAndSignup',
          builder: (context, params) => LoginAndSignupWidget(),
        ),
        FFRoute(
          name: 'Login',
          path: '/login',
          builder: (context, params) => LoginWidget(),
        ),
        FFRoute(
          name: 'SignUp',
          path: '/signUp',
          builder: (context, params) => SignUpWidget(),
        ),
        FFRoute(
          name: 'PinCode',
          path: '/pinCode',
          builder: (context, params) => PinCodeWidget(),
        ),
        FFRoute(
          name: 'ForgottenPassword',
          path: '/forgottenPassword',
          builder: (context, params) => ForgottenPasswordWidget(),
        ),
        FFRoute(
          name: 'ResetPassword',
          path: '/resetPassword',
          builder: (context, params) => ResetPasswordWidget(),
        ),
        FFRoute(
          name: 'HomePage',
          path: '/homePage',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'HomePage')
              : HomePageWidget(),
        ),
        FFRoute(
          name: 'LearnPage',
          path: '/learnPage',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'LearnPage')
              : LearnPageWidget(),
        ),
        FFRoute(
          name: 'liveSessionPage',
          path: '/liveSessionPage',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'liveSessionPage')
              : LiveSessionPageWidget(),
        ),
        FFRoute(
          name: 'accountPage',
          path: '/accountPage',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'accountPage')
              : AccountPageWidget(),
        ),
        FFRoute(
          name: 'accountPageUserProfile',
          path: '/accountPageUserProfile',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: AccountPageUserProfileWidget(),
          ),
        ),
        FFRoute(
          name: 'accountPageDeleteAccount',
          path: '/accountPageDeleteAccount',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: AccountPageDeleteAccountWidget(),
          ),
        ),
        FFRoute(
          name: 'accountPageSettings',
          path: '/accountPageSettings',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: AccountPageSettingsWidget(),
          ),
        ),
        FFRoute(
          name: 'accountPageSettingsSecurity',
          path: '/accountPageSettingsSecurity',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: AccountPageSettingsSecurityWidget(),
          ),
        ),
        FFRoute(
          name: 'accountPageSettingsLag',
          path: '/accountPageSettingsLag',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: AccountPageSettingsLagWidget(),
          ),
        ),
        FFRoute(
          name: 'accountChangePassword',
          path: '/accountChangePassword',
          builder: (context, params) => AccountChangePasswordWidget(),
        ),
        FFRoute(
          name: 'homeCategories',
          path: '/homeCategories',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: HomeCategoriesWidget(),
          ),
        ),
        FFRoute(
          name: 'learnCourseInfo',
          path: '/learnCourseInfo',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: LearnCourseInfoWidget(),
          ),
        ),
        FFRoute(
          name: 'learnCourseLessons',
          path: '/learnCourseLessons',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: LearnCourseLessonsWidget(),
          ),
        ),
        FFRoute(
          name: 'learnvVideo',
          path: '/learnvVideo',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: LearnvVideoWidget(),
          ),
        ),
        FFRoute(
          name: 'liveReminder',
          path: '/liveReminder',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: LiveReminderWidget(),
          ),
        ),
        FFRoute(
          name: 'liveOngoing',
          path: '/liveOngoing',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: LiveOngoingWidget(),
          ),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder: PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).transitionsBuilder,
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}
