import 'package:flutter/material.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _token = prefs.getString('ff_token') ?? _token;
    });
    _safeInit(() {
      _mfacode = prefs.getString('ff_mfacode') ?? _mfacode;
    });
    _safeInit(() {
      _deviceId = prefs.getString('ff_deviceId') ?? _deviceId;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_user')) {
        try {
          _user = jsonDecode(prefs.getString('ff_user') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _enrolments = prefs.getStringList('ff_enrolments')?.map((x) {
            try {
              return jsonDecode(x);
            } catch (e) {
              print("Can't decode persisted json. Error: $e.");
              return {};
            }
          }).toList() ??
          _enrolments;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_categories')) {
        try {
          _categories = jsonDecode(prefs.getString('ff_categories') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _token = '';
  String get token => _token;
  set token(String value) {
    _token = value;
    prefs.setString('ff_token', value);
  }

  String _mfacode = '';
  String get mfacode => _mfacode;
  set mfacode(String value) {
    _mfacode = value;
    prefs.setString('ff_mfacode', value);
  }

  String _deviceId = '';
  String get deviceId => _deviceId;
  set deviceId(String value) {
    _deviceId = value;
    prefs.setString('ff_deviceId', value);
  }

  dynamic _user;
  dynamic get user => _user;
  set user(dynamic value) {
    _user = value;
    prefs.setString('ff_user', jsonEncode(value));
  }

  List<dynamic> _enrolments = [];
  List<dynamic> get enrolments => _enrolments;
  set enrolments(List<dynamic> value) {
    _enrolments = value;
    prefs.setStringList(
        'ff_enrolments', value.map((x) => jsonEncode(x)).toList());
  }

  void addToEnrolments(dynamic value) {
    enrolments.add(value);
    prefs.setStringList(
        'ff_enrolments', _enrolments.map((x) => jsonEncode(x)).toList());
  }

  void removeFromEnrolments(dynamic value) {
    enrolments.remove(value);
    prefs.setStringList(
        'ff_enrolments', _enrolments.map((x) => jsonEncode(x)).toList());
  }

  void removeAtIndexFromEnrolments(int index) {
    enrolments.removeAt(index);
    prefs.setStringList(
        'ff_enrolments', _enrolments.map((x) => jsonEncode(x)).toList());
  }

  void updateEnrolmentsAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    enrolments[index] = updateFn(_enrolments[index]);
    prefs.setStringList(
        'ff_enrolments', _enrolments.map((x) => jsonEncode(x)).toList());
  }

  void insertAtIndexInEnrolments(int index, dynamic value) {
    enrolments.insert(index, value);
    prefs.setStringList(
        'ff_enrolments', _enrolments.map((x) => jsonEncode(x)).toList());
  }

  dynamic _categories;
  dynamic get categories => _categories;
  set categories(dynamic value) {
    _categories = value;
    prefs.setString('ff_categories', jsonEncode(value));
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
