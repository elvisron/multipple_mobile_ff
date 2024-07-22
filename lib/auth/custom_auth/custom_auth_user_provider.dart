import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class MultippleAuthUser {
  MultippleAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<MultippleAuthUser> multippleAuthUserSubject =
    BehaviorSubject.seeded(MultippleAuthUser(loggedIn: false));
Stream<MultippleAuthUser> multippleAuthUserStream() => multippleAuthUserSubject
    .asBroadcastStream()
    .map((user) => currentUser = user);
