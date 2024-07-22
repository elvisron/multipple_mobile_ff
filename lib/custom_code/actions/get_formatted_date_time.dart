// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_js/flutter_js.dart';

final JavascriptRuntime javascriptRuntime =
    getJavascriptRuntime(forceJavascriptCoreOnAndroid: false);

Future<String> getFormattedDateTime() async {
  JsEvalResult jsResult = await javascriptRuntime.evaluateAsync(
    """
      return moment().format("MMMM Do YYYY, h:mm:ss a");
    """,
    sourceUrl:
        'shttps://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js',
  );
  javascriptRuntime.executePendingJob();
  JsEvalResult asyncResult = await javascriptRuntime.handlePromise(jsResult);
  return asyncResult.stringResult;
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
