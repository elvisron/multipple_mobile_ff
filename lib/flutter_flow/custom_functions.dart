import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/auth/custom_auth/auth_util.dart';

int getTotalModules(List<String> modules) {
  return modules.length;
}

String replaceAssetPath(String src) {
  // if src starts with @fra1/: replace with https://multipple20.fra1.digitaloceanspaces.com
  if (src.startsWith('@fra1')) {
    return src.replaceFirst('@fra1',
        'https://multipple-europe-ge-fra001.fra1.digitaloceanspaces.com');
  }
  if (src.startsWith('@nyc3')) {
    return src.replaceFirst('@nyc3',
        'https://multipple-america-usa-nyc001.nyc3.digitaloceanspaces.com');
  }
  if (src.startsWith('@sgp1')) {
    return src.replaceFirst(
        '@sgp1', 'https://multipple-asia-sgp001.sgp1.digitaloceanspaces.com');
  }

  return src;
}

String getLatestAsset(
  int? version,
  dynamic assets,
) {
  // Check if the version exists in the assets map
  var versionKey = version.toString();
  if (assets[versionKey] != null) {
    var asset = assets[versionKey];

    // Check and return the readable asset if it exists
    if (asset['readable'] != null && asset['readable'].toString().isNotEmpty) {
      return asset['readable'].toString().trim();
    }

    // Check and return the editable asset if it exists
    if (asset['editable'] != null && asset['editable'].toString().isNotEmpty) {
      return asset['editable'].toString().trim();
    }
  }

  // If no matching version, get the first element in the assets map
  for (var key in assets.keys) {
    var asset = assets[key];
    if (asset['readable'] != null && asset['readable'].toString().isNotEmpty) {
      return asset['readable'.toString().trim()];
    }
    if (asset['editable'] != null && asset['editable'].toString().isNotEmpty) {
      return asset['editable'].toString().trim();
    }
  }

  // If no readable or editable assets are found, return an empty string
  return '';
}

bool checkEnrollment(
  List<dynamic> enrollments,
  String courseId,
) {
  for (var enrollment in enrollments) {
    if (enrollment["for"]["id"] == courseId) {
      return true;
    }
  }
  return false;
}

bool isDecode(String type) {
  if (type == "MVID") {
    return true;
  }
  return false;
}

String? convertToString(dynamic data) {
  return data.toString();
}

dynamic isMoreLessons(
  List<dynamic>? outlines,
  String ref,
) {
  if (outlines == null || outlines == 'undefined' || outlines.isEmpty) {
    return {'isFirst': false, 'isLast': false};
  }

  bool isFirst = outlines.first['reference'] == ref;
  bool isLast = outlines.last['reference'] == ref;

  return {'isFirst': isFirst, 'isLast': isLast};
}

List<dynamic> convertCategoriesToList(dynamic categories) {
  if (categories == null || categories == 'undefined') {
    return [];
  }

  List categoryNames = (categories as Map).entries.map((entry) {
    return entry.value['name'];
  }).toList();

  return ["All", ...categoryNames];
}

bool filterByCategory(
  List<String>? options,
  List<dynamic>? categories,
) {
  if (options == null || options.isEmpty) {
    return true;
  }

  if (options.contains('All')) {
    return true;
  }

  List<String> courseCategories =
      categories?.map((entry) => entry['name'] as String).toList() ?? [];
  return options.any((elem) => courseCategories.contains(elem));
}

bool isNull(List<String>? options) {
  if (options == null || options.isEmpty) {
    return true;
  } else {
    return false;
  }
}

bool stringContainsQuery(
  String name,
  String query,
) {
  return name.toLowerCase().contains(query.toLowerCase());
}

String? getNextLesson(
  List<dynamic> outlines,
  String ref,
) {
  for (int i = 0; i < outlines.length; i++) {
    if (outlines[i]['reference'] == ref && i < outlines.length - 1) {
      return outlines[i + 1]['reference'].toString();
    }
  }
  return null;
}

String? getPrevioursLesson(
  List<dynamic> outlines,
  String ref,
) {
  for (int i = 0; i < outlines.length; i++) {
    if (outlines[i]['reference'] == ref && i > 0) {
      return outlines[i - 1]['reference'].toString();
    }
  }
  return null;
}

List<dynamic> getActiveMeetings(List<dynamic> sessions) {
  // Check if the sessions list is empty and return an empty list if true
  if (sessions.isEmpty) return [];

  // Filter the sessions list to only include sessions where the status is 'active'
  List<dynamic> activeSessions =
      sessions.where((session) => session['status'] == 'active').toList();

  return activeSessions;
}
