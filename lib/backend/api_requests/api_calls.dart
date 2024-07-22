import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start APS - Authentication Processing Service Group Code

class APSAuthenticationProcessingServiceGroup {
  static String getBaseUrl({
    String? aPSBaseURL = 'https://auth.multipple.com/v1',
    String? lXPBaseURL = 'https://lxp.multipple.com/v1',
    String? homeOrigin = 'https://app.multipple.com',
    String? mPTenantOrigin = 'https://sdt.multipple.com',
    String? mPAuthToken =
        'zj7ksuiqk5pks1tgouhqz4acouaed47pum61sajprmhgz5bpgmheuitgtd3e8ubqu3ceuipqwj6qsuipjupq83jpodqhs5rggmpezajqwbhnu3fgkd6gusiqxu6kuzpctmc6safp3u3sswjps37w8ubqdmhkz4ppi5hqdi3pim3q81tqbdhcs4ogs33edijqdd7kgw7q1m4wg3ppxuhhs5wc1u3egwfgabpwg3pcwm36s3iqut31g1pgm53wzzfq1mposhjqzu3gghwpb54qg4icat5rs4rgu551ga3cim3g8h\$3oJLWa2RgoDZVtB2mMBTuLnqqyqVboYR2pZH',
    String? mPAuthRole = 'LEARNER',
    String? mPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
    String? mPUserAgents = 'MP.mobile/1.0',
  }) =>
      'https://auth.multipple.com/v1';
  static Map<String, String> headers = {
    'MP-Auth-Role': '[MP_AuthRole]',
  };
  static SignUpCall signUpCall = SignUpCall();
  static SignInCall signInCall = SignInCall();
  static EmailAddressVerificationCall emailAddressVerificationCall =
      EmailAddressVerificationCall();
  static ResendVerificationEmailCall resendVerificationEmailCall =
      ResendVerificationEmailCall();
  static ChangeEmailAddressCall changeEmailAddressCall =
      ChangeEmailAddressCall();
  static RequestAResetPasswordLinkCall requestAResetPasswordLinkCall =
      RequestAResetPasswordLinkCall();
  static ResetANewPasswordCall resetANewPasswordCall = ResetANewPasswordCall();
  static EnableOrDisable2FACall enableOrDisable2FACall =
      EnableOrDisable2FACall();
  static TwoStepVerificationCall twoStepVerificationCall =
      TwoStepVerificationCall();
  static SignOutCall signOutCall = SignOutCall();
}

class SignUpCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? firstName = '',
    String? lastName = '',
    String? agreeTerms = '',
    String? email = '',
    String? password = '',
    String? aPSBaseURL = 'https://auth.multipple.com/v1',
    String? lXPBaseURL = 'https://lxp.multipple.com/v1',
    String? homeOrigin = 'https://app.multipple.com',
    String? mPTenantOrigin = 'https://sdt.multipple.com',
    String? mPAuthToken =
        'zj7ksuiqk5pks1tgouhqz4acouaed47pum61sajprmhgz5bpgmheuitgtd3e8ubqu3ceuipqwj6qsuipjupq83jpodqhs5rggmpezajqwbhnu3fgkd6gusiqxu6kuzpctmc6safp3u3sswjps37w8ubqdmhkz4ppi5hqdi3pim3q81tqbdhcs4ogs33edijqdd7kgw7q1m4wg3ppxuhhs5wc1u3egwfgabpwg3pcwm36s3iqut31g1pgm53wzzfq1mposhjqzu3gghwpb54qg4icat5rs4rgu551ga3cim3g8h\$3oJLWa2RgoDZVtB2mMBTuLnqqyqVboYR2pZH',
    String? mPAuthRole = 'LEARNER',
    String? mPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
    String? mPUserAgents = 'MP.mobile/1.0',
  }) async {
    final baseUrl = APSAuthenticationProcessingServiceGroup.getBaseUrl(
      aPSBaseURL: aPSBaseURL,
      lXPBaseURL: lXPBaseURL,
      homeOrigin: homeOrigin,
      mPTenantOrigin: mPTenantOrigin,
      mPAuthToken: mPAuthToken,
      mPAuthRole: mPAuthRole,
      mPAuthDevice: mPAuthDevice,
      mPUserAgents: mPUserAgents,
    );

    final ffApiRequestBody = '''
{
  "email": "${email}",
  "password": "${password}",
  "first_name": "${firstName}",
  "last_name": "${lastName}",
  "country": {},
  "referer": "",
  "agree_terms": "${agreeTerms}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Sign Up',
      apiUrl: '${baseUrl}/signup',
      callType: ApiCallType.POST,
      headers: {
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-RO': '${mPTenantOrigin}',
        'MP-User-Agent': '${mPUserAgents}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SignInCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
    String? type = 'LEARNER',
    String? aPSBaseURL = 'https://auth.multipple.com/v1',
    String? lXPBaseURL = 'https://lxp.multipple.com/v1',
    String? homeOrigin = 'https://app.multipple.com',
    String? mPTenantOrigin = 'https://sdt.multipple.com',
    String? mPAuthToken =
        'zj7ksuiqk5pks1tgouhqz4acouaed47pum61sajprmhgz5bpgmheuitgtd3e8ubqu3ceuipqwj6qsuipjupq83jpodqhs5rggmpezajqwbhnu3fgkd6gusiqxu6kuzpctmc6safp3u3sswjps37w8ubqdmhkz4ppi5hqdi3pim3q81tqbdhcs4ogs33edijqdd7kgw7q1m4wg3ppxuhhs5wc1u3egwfgabpwg3pcwm36s3iqut31g1pgm53wzzfq1mposhjqzu3gghwpb54qg4icat5rs4rgu551ga3cim3g8h\$3oJLWa2RgoDZVtB2mMBTuLnqqyqVboYR2pZH',
    String? mPAuthRole = 'LEARNER',
    String? mPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
    String? mPUserAgents = 'MP.mobile/1.0',
  }) async {
    final baseUrl = APSAuthenticationProcessingServiceGroup.getBaseUrl(
      aPSBaseURL: aPSBaseURL,
      lXPBaseURL: lXPBaseURL,
      homeOrigin: homeOrigin,
      mPTenantOrigin: mPTenantOrigin,
      mPAuthToken: mPAuthToken,
      mPAuthRole: mPAuthRole,
      mPAuthDevice: mPAuthDevice,
      mPUserAgents: mPUserAgents,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Sign In',
      apiUrl: '${baseUrl}/signin',
      callType: ApiCallType.POST,
      headers: {
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-RO': '${mPTenantOrigin}',
        'MP-User-Agent': '${mPUserAgents}',
      },
      params: {
        'email': email,
        'password': password,
        'device': "{\"platform\":\"Android 9.0\", \"model\":\"Samsung S8\"}",
        'type': type,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? logintoken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.credentials.ctoken''',
      ));
  dynamic? userdevice(dynamic response) => getJsonField(
        response,
        r'''$.credentials''',
      );
  String? usertype(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.credentials.type''',
      ));
  String? userrole(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.credentials.role''',
      ));
  String? next(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.next''',
      ));
  String? deviceId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.credentials.deviceId''',
      ));
}

class EmailAddressVerificationCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? xUserAgent = '',
    int? code,
    String? email = '',
    String? aPSBaseURL = 'https://auth.multipple.com/v1',
    String? lXPBaseURL = 'https://lxp.multipple.com/v1',
    String? homeOrigin = 'https://app.multipple.com',
    String? mPTenantOrigin = 'https://sdt.multipple.com',
    String? mPAuthToken =
        'zj7ksuiqk5pks1tgouhqz4acouaed47pum61sajprmhgz5bpgmheuitgtd3e8ubqu3ceuipqwj6qsuipjupq83jpodqhs5rggmpezajqwbhnu3fgkd6gusiqxu6kuzpctmc6safp3u3sswjps37w8ubqdmhkz4ppi5hqdi3pim3q81tqbdhcs4ogs33edijqdd7kgw7q1m4wg3ppxuhhs5wc1u3egwfgabpwg3pcwm36s3iqut31g1pgm53wzzfq1mposhjqzu3gghwpb54qg4icat5rs4rgu551ga3cim3g8h\$3oJLWa2RgoDZVtB2mMBTuLnqqyqVboYR2pZH',
    String? mPAuthRole = 'LEARNER',
    String? mPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
    String? mPUserAgents = 'MP.mobile/1.0',
  }) async {
    final baseUrl = APSAuthenticationProcessingServiceGroup.getBaseUrl(
      aPSBaseURL: aPSBaseURL,
      lXPBaseURL: lXPBaseURL,
      homeOrigin: homeOrigin,
      mPTenantOrigin: mPTenantOrigin,
      mPAuthToken: mPAuthToken,
      mPAuthRole: mPAuthRole,
      mPAuthDevice: mPAuthDevice,
      mPUserAgents: mPUserAgents,
    );

    final ffApiRequestBody = '''
{
  "email": "${email}",
  "evc": ${code},
  "device": {
    "platform": "Android 9.0",
    "model": "Samsung S8"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Email Address Verification',
      apiUrl: '${baseUrl}/verify/email',
      callType: ApiCallType.POST,
      headers: {
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-RO': '${mPTenantOrigin}',
        'MP-User-Agent': '${mPUserAgents}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ResendVerificationEmailCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? xUserAgent = '',
    String? email = '',
    String? aPSBaseURL = 'https://auth.multipple.com/v1',
    String? lXPBaseURL = 'https://lxp.multipple.com/v1',
    String? homeOrigin = 'https://app.multipple.com',
    String? mPTenantOrigin = 'https://sdt.multipple.com',
    String? mPAuthToken =
        'zj7ksuiqk5pks1tgouhqz4acouaed47pum61sajprmhgz5bpgmheuitgtd3e8ubqu3ceuipqwj6qsuipjupq83jpodqhs5rggmpezajqwbhnu3fgkd6gusiqxu6kuzpctmc6safp3u3sswjps37w8ubqdmhkz4ppi5hqdi3pim3q81tqbdhcs4ogs33edijqdd7kgw7q1m4wg3ppxuhhs5wc1u3egwfgabpwg3pcwm36s3iqut31g1pgm53wzzfq1mposhjqzu3gghwpb54qg4icat5rs4rgu551ga3cim3g8h\$3oJLWa2RgoDZVtB2mMBTuLnqqyqVboYR2pZH',
    String? mPAuthRole = 'LEARNER',
    String? mPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
    String? mPUserAgents = 'MP.mobile/1.0',
  }) async {
    final baseUrl = APSAuthenticationProcessingServiceGroup.getBaseUrl(
      aPSBaseURL: aPSBaseURL,
      lXPBaseURL: lXPBaseURL,
      homeOrigin: homeOrigin,
      mPTenantOrigin: mPTenantOrigin,
      mPAuthToken: mPAuthToken,
      mPAuthRole: mPAuthRole,
      mPAuthDevice: mPAuthDevice,
      mPUserAgents: mPUserAgents,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Resend Verification Email',
      apiUrl: '${baseUrl}/resend/email',
      callType: ApiCallType.POST,
      headers: {
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-RO': '${mPTenantOrigin}',
        'MP-User-Agent': '${mPUserAgents}',
      },
      params: {
        'email': email,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ChangeEmailAddressCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? xUserAgent = '',
    String? aPSBaseURL = 'https://auth.multipple.com/v1',
    String? lXPBaseURL = 'https://lxp.multipple.com/v1',
    String? homeOrigin = 'https://app.multipple.com',
    String? mPTenantOrigin = 'https://sdt.multipple.com',
    String? mPAuthToken =
        'zj7ksuiqk5pks1tgouhqz4acouaed47pum61sajprmhgz5bpgmheuitgtd3e8ubqu3ceuipqwj6qsuipjupq83jpodqhs5rggmpezajqwbhnu3fgkd6gusiqxu6kuzpctmc6safp3u3sswjps37w8ubqdmhkz4ppi5hqdi3pim3q81tqbdhcs4ogs33edijqdd7kgw7q1m4wg3ppxuhhs5wc1u3egwfgabpwg3pcwm36s3iqut31g1pgm53wzzfq1mposhjqzu3gghwpb54qg4icat5rs4rgu551ga3cim3g8h\$3oJLWa2RgoDZVtB2mMBTuLnqqyqVboYR2pZH',
    String? mPAuthRole = 'LEARNER',
    String? mPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
    String? mPUserAgents = 'MP.mobile/1.0',
  }) async {
    final baseUrl = APSAuthenticationProcessingServiceGroup.getBaseUrl(
      aPSBaseURL: aPSBaseURL,
      lXPBaseURL: lXPBaseURL,
      homeOrigin: homeOrigin,
      mPTenantOrigin: mPTenantOrigin,
      mPAuthToken: mPAuthToken,
      mPAuthRole: mPAuthRole,
      mPAuthDevice: mPAuthDevice,
      mPUserAgents: mPUserAgents,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Change Email Address',
      apiUrl: '${baseUrl}/change-email',
      callType: ApiCallType.PATCH,
      headers: {
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-RO': '${mPTenantOrigin}',
        'MP-User-Agent': '${mPUserAgents}',
      },
      params: {},
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RequestAResetPasswordLinkCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? xUserAgent = '',
    String? email = '',
    String? aPSBaseURL = 'https://auth.multipple.com/v1',
    String? lXPBaseURL = 'https://lxp.multipple.com/v1',
    String? homeOrigin = 'https://app.multipple.com',
    String? mPTenantOrigin = 'https://sdt.multipple.com',
    String? mPAuthToken =
        'zj7ksuiqk5pks1tgouhqz4acouaed47pum61sajprmhgz5bpgmheuitgtd3e8ubqu3ceuipqwj6qsuipjupq83jpodqhs5rggmpezajqwbhnu3fgkd6gusiqxu6kuzpctmc6safp3u3sswjps37w8ubqdmhkz4ppi5hqdi3pim3q81tqbdhcs4ogs33edijqdd7kgw7q1m4wg3ppxuhhs5wc1u3egwfgabpwg3pcwm36s3iqut31g1pgm53wzzfq1mposhjqzu3gghwpb54qg4icat5rs4rgu551ga3cim3g8h\$3oJLWa2RgoDZVtB2mMBTuLnqqyqVboYR2pZH',
    String? mPAuthRole = 'LEARNER',
    String? mPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
    String? mPUserAgents = 'MP.mobile/1.0',
  }) async {
    final baseUrl = APSAuthenticationProcessingServiceGroup.getBaseUrl(
      aPSBaseURL: aPSBaseURL,
      lXPBaseURL: lXPBaseURL,
      homeOrigin: homeOrigin,
      mPTenantOrigin: mPTenantOrigin,
      mPAuthToken: mPAuthToken,
      mPAuthRole: mPAuthRole,
      mPAuthDevice: mPAuthDevice,
      mPUserAgents: mPUserAgents,
    );

    final ffApiRequestBody = '''
{
    "email": "${email}",
    "country": {},
    "device": {
        "platform": "Android 9.0",
        "model": "Samsung S8"
    }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Request a Reset Password Link',
      apiUrl: '${baseUrl}/reset-pwd/link',
      callType: ApiCallType.POST,
      headers: {
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-RO': '${mPTenantOrigin}',
        'MP-User-Agent': '${mPUserAgents}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ResetANewPasswordCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? xUserAgent = '',
    String? password = '',
    String? aPSBaseURL = 'https://auth.multipple.com/v1',
    String? lXPBaseURL = 'https://lxp.multipple.com/v1',
    String? homeOrigin = 'https://app.multipple.com',
    String? mPTenantOrigin = 'https://sdt.multipple.com',
    String? mPAuthToken =
        'zj7ksuiqk5pks1tgouhqz4acouaed47pum61sajprmhgz5bpgmheuitgtd3e8ubqu3ceuipqwj6qsuipjupq83jpodqhs5rggmpezajqwbhnu3fgkd6gusiqxu6kuzpctmc6safp3u3sswjps37w8ubqdmhkz4ppi5hqdi3pim3q81tqbdhcs4ogs33edijqdd7kgw7q1m4wg3ppxuhhs5wc1u3egwfgabpwg3pcwm36s3iqut31g1pgm53wzzfq1mposhjqzu3gghwpb54qg4icat5rs4rgu551ga3cim3g8h\$3oJLWa2RgoDZVtB2mMBTuLnqqyqVboYR2pZH',
    String? mPAuthRole = 'LEARNER',
    String? mPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
    String? mPUserAgents = 'MP.mobile/1.0',
  }) async {
    final baseUrl = APSAuthenticationProcessingServiceGroup.getBaseUrl(
      aPSBaseURL: aPSBaseURL,
      lXPBaseURL: lXPBaseURL,
      homeOrigin: homeOrigin,
      mPTenantOrigin: mPTenantOrigin,
      mPAuthToken: mPAuthToken,
      mPAuthRole: mPAuthRole,
      mPAuthDevice: mPAuthDevice,
      mPUserAgents: mPUserAgents,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Reset a New Password',
      apiUrl: '${baseUrl}/reset-pwd',
      callType: ApiCallType.PATCH,
      headers: {
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-RO': '${mPTenantOrigin}',
        'MP-User-Agent': '${mPUserAgents}',
      },
      params: {
        'new_password': password,
        'token': mPAuthToken,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EnableOrDisable2FACall {
  Future<ApiCallResponse> call({
    String? action = 'enable',
    String? aPSBaseURL = 'https://auth.multipple.com/v1',
    String? lXPBaseURL = 'https://lxp.multipple.com/v1',
    String? homeOrigin = 'https://app.multipple.com',
    String? mPTenantOrigin = 'https://sdt.multipple.com',
    String? mPAuthToken =
        'zj7ksuiqk5pks1tgouhqz4acouaed47pum61sajprmhgz5bpgmheuitgtd3e8ubqu3ceuipqwj6qsuipjupq83jpodqhs5rggmpezajqwbhnu3fgkd6gusiqxu6kuzpctmc6safp3u3sswjps37w8ubqdmhkz4ppi5hqdi3pim3q81tqbdhcs4ogs33edijqdd7kgw7q1m4wg3ppxuhhs5wc1u3egwfgabpwg3pcwm36s3iqut31g1pgm53wzzfq1mposhjqzu3gghwpb54qg4icat5rs4rgu551ga3cim3g8h\$3oJLWa2RgoDZVtB2mMBTuLnqqyqVboYR2pZH',
    String? mPAuthRole = 'LEARNER',
    String? mPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
    String? mPUserAgents = 'MP.mobile/1.0',
  }) async {
    final baseUrl = APSAuthenticationProcessingServiceGroup.getBaseUrl(
      aPSBaseURL: aPSBaseURL,
      lXPBaseURL: lXPBaseURL,
      homeOrigin: homeOrigin,
      mPTenantOrigin: mPTenantOrigin,
      mPAuthToken: mPAuthToken,
      mPAuthRole: mPAuthRole,
      mPAuthDevice: mPAuthDevice,
      mPUserAgents: mPUserAgents,
    );

    final ffApiRequestBody = '''
{
    "email": "elvisron@gmail.com",
    "factor": {
        "type": "code",
        "phone": "(+33)753879936"
    }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Enable or Disable 2FA',
      apiUrl: '${baseUrl}/two-step/${action}',
      callType: ApiCallType.PATCH,
      headers: {
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-RO': '${mPTenantOrigin}',
        'MP-User-Agent': '${mPUserAgents}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class TwoStepVerificationCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? xUserAgent = '',
    String? type = 'code',
    String? email = '',
    String? aPSBaseURL = 'https://auth.multipple.com/v1',
    String? lXPBaseURL = 'https://lxp.multipple.com/v1',
    String? homeOrigin = 'https://app.multipple.com',
    String? mPTenantOrigin = 'https://sdt.multipple.com',
    String? mPAuthToken =
        'zj7ksuiqk5pks1tgouhqz4acouaed47pum61sajprmhgz5bpgmheuitgtd3e8ubqu3ceuipqwj6qsuipjupq83jpodqhs5rggmpezajqwbhnu3fgkd6gusiqxu6kuzpctmc6safp3u3sswjps37w8ubqdmhkz4ppi5hqdi3pim3q81tqbdhcs4ogs33edijqdd7kgw7q1m4wg3ppxuhhs5wc1u3egwfgabpwg3pcwm36s3iqut31g1pgm53wzzfq1mposhjqzu3gghwpb54qg4icat5rs4rgu551ga3cim3g8h\$3oJLWa2RgoDZVtB2mMBTuLnqqyqVboYR2pZH',
    String? mPAuthRole = 'LEARNER',
    String? mPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
    String? mPUserAgents = 'MP.mobile/1.0',
  }) async {
    final baseUrl = APSAuthenticationProcessingServiceGroup.getBaseUrl(
      aPSBaseURL: aPSBaseURL,
      lXPBaseURL: lXPBaseURL,
      homeOrigin: homeOrigin,
      mPTenantOrigin: mPTenantOrigin,
      mPAuthToken: mPAuthToken,
      mPAuthRole: mPAuthRole,
      mPAuthDevice: mPAuthDevice,
      mPUserAgents: mPUserAgents,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Two Step Verification',
      apiUrl: '${baseUrl}/two-step/verify/${type}',
      callType: ApiCallType.POST,
      headers: {
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-RO': '${mPTenantOrigin}',
        'MP-User-Agent': '${mPUserAgents}',
      },
      params: {
        'token':
            "397lYNChvczGDI25WuQu2OUUxNc3vRW2ktUtfGZp7uT65mRiw1AygqVZJuTleKC5Eaw5KeJpsiRVL3xQr3e1NeSK",
        'index': "2373",
        'email': email,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SignOutCall {
  Future<ApiCallResponse> call({
    String? xUserAgent = '',
    String? xAuthToken = '',
    String? xAuthDevice = '',
    String? origin = '',
    String? aPSBaseURL = 'https://auth.multipple.com/v1',
    String? lXPBaseURL = 'https://lxp.multipple.com/v1',
    String? homeOrigin = 'https://app.multipple.com',
    String? mPTenantOrigin = 'https://sdt.multipple.com',
    String? mPAuthToken =
        'zj7ksuiqk5pks1tgouhqz4acouaed47pum61sajprmhgz5bpgmheuitgtd3e8ubqu3ceuipqwj6qsuipjupq83jpodqhs5rggmpezajqwbhnu3fgkd6gusiqxu6kuzpctmc6safp3u3sswjps37w8ubqdmhkz4ppi5hqdi3pim3q81tqbdhcs4ogs33edijqdd7kgw7q1m4wg3ppxuhhs5wc1u3egwfgabpwg3pcwm36s3iqut31g1pgm53wzzfq1mposhjqzu3gghwpb54qg4icat5rs4rgu551ga3cim3g8h\$3oJLWa2RgoDZVtB2mMBTuLnqqyqVboYR2pZH',
    String? mPAuthRole = 'LEARNER',
    String? mPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
    String? mPUserAgents = 'MP.mobile/1.0',
  }) async {
    final baseUrl = APSAuthenticationProcessingServiceGroup.getBaseUrl(
      aPSBaseURL: aPSBaseURL,
      lXPBaseURL: lXPBaseURL,
      homeOrigin: homeOrigin,
      mPTenantOrigin: mPTenantOrigin,
      mPAuthToken: mPAuthToken,
      mPAuthRole: mPAuthRole,
      mPAuthDevice: mPAuthDevice,
      mPUserAgents: mPUserAgents,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Sign Out',
      apiUrl: '${baseUrl}/signout',
      callType: ApiCallType.GET,
      headers: {
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-User-Agent': '${mPUserAgents}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Device': '${mPAuthDevice}',
        'MP-RO': '${mPTenantOrigin}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End APS - Authentication Processing Service Group Code

/// Start LXP - Learning Experience Portal Group Code

class LXPLearningExperiencePortalGroup {
  static String getBaseUrl({
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) =>
      'https://lxp.multipple.com/v1';
  static Map<String, String> headers = {
    'Origin': '[LXP_TenantOrigin]',
    'MP-User-Agent': '[LXP_UserAgent]',
    'MP-Auth-Token': '[LXP_AuthToken]',
    'MP-Auth-Device': '[LXP_AuthDevice]',
    'MP-Auth-Role': '[LXP_AuthRole]',
    'MP-RO': '[LXP_TenantOrigin]',
  };
  static CreateInstitutionCall createInstitutionCall = CreateInstitutionCall();
  static RetrieveInstitutionAccountCall retrieveInstitutionAccountCall =
      RetrieveInstitutionAccountCall();
  static RetrieveTenantInformationCall retrieveTenantInformationCall =
      RetrieveTenantInformationCall();
  static CheckAvailableTenantDomainCall checkAvailableTenantDomainCall =
      CheckAvailableTenantDomainCall();
  static UpdateInstitutionInfosCall updateInstitutionInfosCall =
      UpdateInstitutionInfosCall();
  static UpdateInstitutionSettingsCall updateInstitutionSettingsCall =
      UpdateInstitutionSettingsCall();
  static UpdateInstitutionDomainsCall updateInstitutionDomainsCall =
      UpdateInstitutionDomainsCall();
  static DeleteCloseAnInstitutionCall deleteCloseAnInstitutionCall =
      DeleteCloseAnInstitutionCall();
  static GetUserAccountCall getUserAccountCall = GetUserAccountCall();
  static SearchUserCall searchUserCall = SearchUserCall();
  static UpdateUserProfileCall updateUserProfileCall = UpdateUserProfileCall();
  static UpdateUserSettingsCall updateUserSettingsCall =
      UpdateUserSettingsCall();
  static DeleteUserAccountCall deleteUserAccountCall = DeleteUserAccountCall();
  static SentInvitationToUserViaEmailCall sentInvitationToUserViaEmailCall =
      SentInvitationToUserViaEmailCall();
  static AcceptInvitationCall acceptInvitationCall = AcceptInvitationCall();
  static CreateANewDepartmentCall createANewDepartmentCall =
      CreateANewDepartmentCall();
  static RetreiveDepartmentDetailsCall retreiveDepartmentDetailsCall =
      RetreiveDepartmentDetailsCall();
  static GetAllDepartmentsCall getAllDepartmentsCall = GetAllDepartmentsCall();
  static UpdateAnExsistingDepartmentCall updateAnExsistingDepartmentCall =
      UpdateAnExsistingDepartmentCall();
  static DeleteADepartmentCall deleteADepartmentCall = DeleteADepartmentCall();
  static CreateANewGroupCall createANewGroupCall = CreateANewGroupCall();
  static RetreiveAGroupCall retreiveAGroupCall = RetreiveAGroupCall();
  static GetAListOfGroupsCall getAListOfGroupsCall = GetAListOfGroupsCall();
  static SearchAGroupCall searchAGroupCall = SearchAGroupCall();
  static UpdateASessionCall updateASessionCall = UpdateASessionCall();
  static DeleteAGroupCall deleteAGroupCall = DeleteAGroupCall();
  static CreateANewCategoryCall createANewCategoryCall =
      CreateANewCategoryCall();
  static RetreiveCategoryDetailsCall retreiveCategoryDetailsCall =
      RetreiveCategoryDetailsCall();
  static UpdateAnExsistingCategoryCall updateAnExsistingCategoryCall =
      UpdateAnExsistingCategoryCall();
  static GetAllCategoriesCall getAllCategoriesCall = GetAllCategoriesCall();
  static DeleteACategoryCall deleteACategoryCall = DeleteACategoryCall();
  static AssignOrUnassignAGivenCategoryToEntitiesCall
      assignOrUnassignAGivenCategoryToEntitiesCall =
      AssignOrUnassignAGivenCategoryToEntitiesCall();
  static AddNewTagCall addNewTagCall = AddNewTagCall();
  static GetAvailableTagsListCall getAvailableTagsListCall =
      GetAvailableTagsListCall();
  static DeleteATagCall deleteATagCall = DeleteATagCall();
  static AddNewItemToTheLibraryCall addNewItemToTheLibraryCall =
      AddNewItemToTheLibraryCall();
  static GetAListOfItemsInTheLibraryCall getAListOfItemsInTheLibraryCall =
      GetAListOfItemsInTheLibraryCall();
  static RetrieveAnItemFromLibraryByLearnerCall
      retrieveAnItemFromLibraryByLearnerCall =
      RetrieveAnItemFromLibraryByLearnerCall();
  static GetDTFCourseDetailsCall getDTFCourseDetailsCall =
      GetDTFCourseDetailsCall();
  static SearchInItemsTheLibraryCall searchInItemsTheLibraryCall =
      SearchInItemsTheLibraryCall();
  static ShareWithOthersCall shareWithOthersCall = ShareWithOthersCall();
  static RevertAPreviousSharedCall revertAPreviousSharedCall =
      RevertAPreviousSharedCall();
  static GetAListOfCoursesByLearnerCall getAListOfCoursesByLearnerCall =
      GetAListOfCoursesByLearnerCall();
  static SearchACourseByLearnerCall searchACourseByLearnerCall =
      SearchACourseByLearnerCall();
  static RetreiveACourseInformationByLearnerCall
      retreiveACourseInformationByLearnerCall =
      RetreiveACourseInformationByLearnerCall();
  static CreateANewCourseCall createANewCourseCall = CreateANewCourseCall();
  static RetreiveACourseInformationCall retreiveACourseInformationCall =
      RetreiveACourseInformationCall();
  static GetAListOfCoursesCall getAListOfCoursesCall = GetAListOfCoursesCall();
  static SearchACourseCall searchACourseCall = SearchACourseCall();
  static UpdateACourseCall updateACourseCall = UpdateACourseCall();
  static DeleteACourseCall deleteACourseCall = DeleteACourseCall();
  static GetAListOfProgramsByLearnerCall getAListOfProgramsByLearnerCall =
      GetAListOfProgramsByLearnerCall();
  static SearchAProgramByLearnerCall searchAProgramByLearnerCall =
      SearchAProgramByLearnerCall();
  static RetreiveAProgramInformationByLearnerCall
      retreiveAProgramInformationByLearnerCall =
      RetreiveAProgramInformationByLearnerCall();
  static CreateANewProgramCall createANewProgramCall = CreateANewProgramCall();
  static RetreiveAProgramInformationCall retreiveAProgramInformationCall =
      RetreiveAProgramInformationCall();
  static GetAListOfProgramsCall getAListOfProgramsCall =
      GetAListOfProgramsCall();
  static SearchAProgramCall searchAProgramCall = SearchAProgramCall();
  static UpdateAProgramCall updateAProgramCall = UpdateAProgramCall();
  static DeleteAProgramCall deleteAProgramCall = DeleteAProgramCall();
  static CreateANewSessionCall createANewSessionCall = CreateANewSessionCall();
  static RetreiveASessionCall retreiveASessionCall = RetreiveASessionCall();
  static GetAListOfSessionsCall getAListOfSessionsCall =
      GetAListOfSessionsCall();
  static SearchASessionCall searchASessionCall = SearchASessionCall();
  static DeleteASessionCall deleteASessionCall = DeleteASessionCall();
  static CreateANewLearningPathCall createANewLearningPathCall =
      CreateANewLearningPathCall();
  static RetreiveALearningPathCall retreiveALearningPathCall =
      RetreiveALearningPathCall();
  static GetAListOfLearningPathsCall getAListOfLearningPathsCall =
      GetAListOfLearningPathsCall();
  static SearchALearningPathCall searchALearningPathCall =
      SearchALearningPathCall();
  static UpdateALearningPathCall updateALearningPathCall =
      UpdateALearningPathCall();
  static DeleteALearningPathCall deleteALearningPathCall =
      DeleteALearningPathCall();
  static EnrollToACourseOrProgramCall enrollToACourseOrProgramCall =
      EnrollToACourseOrProgramCall();
  static RetreiveAnEnrollmentCall retreiveAnEnrollmentCall =
      RetreiveAnEnrollmentCall();
  static GetAListOfEnrollmentsByALearnerCall
      getAListOfEnrollmentsByALearnerCall =
      GetAListOfEnrollmentsByALearnerCall();
  static GetAListOfEnrollmentsByAAdminOrInstructorCall
      getAListOfEnrollmentsByAAdminOrInstructorCall =
      GetAListOfEnrollmentsByAAdminOrInstructorCall();
  static SearchAnEnrollmentCall searchAnEnrollmentCall =
      SearchAnEnrollmentCall();
  static CancelAnEnrollmentCall cancelAnEnrollmentCall =
      CancelAnEnrollmentCall();
  static SuspendAndRevertAnEnrollmentByAdminCall
      suspendAndRevertAnEnrollmentByAdminCall =
      SuspendAndRevertAnEnrollmentByAdminCall();
  static DeclareALearningProgressStageCall declareALearningProgressStageCall =
      DeclareALearningProgressStageCall();
  static UpdateALearningProgressStageRecordCall
      updateALearningProgressStageRecordCall =
      UpdateALearningProgressStageRecordCall();
  static RecordAnAssessmentResultsCall recordAnAssessmentResultsCall =
      RecordAnAssessmentResultsCall();
  static IssueACertificateToALearnerCall issueACertificateToALearnerCall =
      IssueACertificateToALearnerCall();
  static ConfigureAnExtensionCall configureAnExtensionCall =
      ConfigureAnExtensionCall();
  static RetreiveExtensionConfigurationCall retreiveExtensionConfigurationCall =
      RetreiveExtensionConfigurationCall();
  static UpdateSpecificExtensionConfigurationCall
      updateSpecificExtensionConfigurationCall =
      UpdateSpecificExtensionConfigurationCall();
  static InstallANewExtensionCall installANewExtensionCall =
      InstallANewExtensionCall();
  static RetreiveExtensionCall retreiveExtensionCall = RetreiveExtensionCall();
  static GetAllInstalledExtensionListCall getAllInstalledExtensionListCall =
      GetAllInstalledExtensionListCall();
  static SearchAnExtensionCall searchAnExtensionCall = SearchAnExtensionCall();
  static UninstallAnExtensionCall uninstallAnExtensionCall =
      UninstallAnExtensionCall();
  static CreateNewAppCall createNewAppCall = CreateNewAppCall();
  static RetreiveAppCall retreiveAppCall = RetreiveAppCall();
  static GetAppsListCall getAppsListCall = GetAppsListCall();
  static SearchAnAppCall searchAnAppCall = SearchAnAppCall();
  static UpdateAnAppCall updateAnAppCall = UpdateAnAppCall();
  static DeleteAnAppCall deleteAnAppCall = DeleteAnAppCall();
  static CreateNewSiteCall createNewSiteCall = CreateNewSiteCall();
  static RetreiveSiteInformationCall retreiveSiteInformationCall =
      RetreiveSiteInformationCall();
  static GetListOfSitesCall getListOfSitesCall = GetListOfSitesCall();
  static SearchSiteCall searchSiteCall = SearchSiteCall();
  static DeleteArchiveASiteCall deleteArchiveASiteCall =
      DeleteArchiveASiteCall();
  static RecordASaleCall recordASaleCall = RecordASaleCall();
  static RetreiveSaleDetailsCall retreiveSaleDetailsCall =
      RetreiveSaleDetailsCall();
  static FetchSalesRecordListCall fetchSalesRecordListCall =
      FetchSalesRecordListCall();
  static GetSalesStatsCall getSalesStatsCall = GetSalesStatsCall();
  static SearchSaleCall searchSaleCall = SearchSaleCall();
  static UpdateSiteInformationCall updateSiteInformationCall =
      UpdateSiteInformationCall();
  static SubscribeCall subscribeCall = SubscribeCall();
  static PreviousSubscriptionsHistoryCall previousSubscriptionsHistoryCall =
      PreviousSubscriptionsHistoryCall();
  static SearchPreviousSubscriptionCall searchPreviousSubscriptionCall =
      SearchPreviousSubscriptionCall();
}

class CreateInstitutionCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create Institution',
      apiUrl: '${baseUrl}/institution/create',
      callType: ApiCallType.POST,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetrieveInstitutionAccountCall {
  Future<ApiCallResponse> call({
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retrieve Institution Account',
      apiUrl: '${baseUrl}/institution/account',
      callType: ApiCallType.GET,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetrieveTenantInformationCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retrieve Tenant Information',
      apiUrl: '${baseUrl}/tenant',
      callType: ApiCallType.GET,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic? categories(dynamic response) => getJsonField(
        response,
        r'''$.tenant.categories''',
      );
}

class CheckAvailableTenantDomainCall {
  Future<ApiCallResponse> call({
    String? checkfor = 'sdt.multipple.com',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Check Available Tenant Domain',
      apiUrl: '${baseUrl}/institution/domain/check',
      callType: ApiCallType.GET,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
      },
      params: {
        'checkfor': checkfor,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateInstitutionInfosCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Update Institution Infos',
      apiUrl: '${baseUrl}/institution/update',
      callType: ApiCallType.PUT,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
      },
      params: {
        'description': "Testing with new description",
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateInstitutionSettingsCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? subset = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Update Institution Settings',
      apiUrl: '${baseUrl}/institution/${subset}/update',
      callType: ApiCallType.PUT,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateInstitutionDomainsCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Update Institution Domains',
      apiUrl: '${baseUrl}/institution/domains/change',
      callType: ApiCallType.PATCH,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteCloseAnInstitutionCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Delete/Close an Institution',
      apiUrl: '${baseUrl}/institution/close',
      callType: ApiCallType.DELETE,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetUserAccountCall {
  Future<ApiCallResponse> call({
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get User Account',
      apiUrl: '${baseUrl}/user/account',
      callType: ApiCallType.GET,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic? user(dynamic response) => getJsonField(
        response,
        r'''$.user''',
      );
  List? certificates(dynamic response) => getJsonField(
        response,
        r'''$.user.learner.certificates''',
        true,
      ) as List?;
}

class SearchUserCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? query = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Search User',
      apiUrl: '${baseUrl}/user/search',
      callType: ApiCallType.GET,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {
        'query': query,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateUserProfileCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Update User Profile',
      apiUrl: '${baseUrl}/user/profile/update',
      callType: ApiCallType.PUT,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateUserSettingsCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Update User Settings',
      apiUrl: '${baseUrl}/user/settings/update',
      callType: ApiCallType.PUT,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteUserAccountCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? reasons = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Delete User Account',
      apiUrl: '${baseUrl}/user/delete',
      callType: ApiCallType.DELETE,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {
        'reasons': reasons,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SentInvitationToUserViaEmailCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Sent invitation to User via email',
      apiUrl: '${baseUrl}/invitation/send',
      callType: ApiCallType.POST,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AcceptInvitationCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? token = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Accept Invitation',
      apiUrl: '${baseUrl}/invitation/accept/${token}',
      callType: ApiCallType.POST,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateANewDepartmentCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create a New Department',
      apiUrl: '${baseUrl}/department/create',
      callType: ApiCallType.POST,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetreiveDepartmentDetailsCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? id = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retreive Department Details',
      apiUrl: '${baseUrl}/department/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllDepartmentsCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get All Departments',
      apiUrl: '${baseUrl}/department/list',
      callType: ApiCallType.GET,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateAnExsistingDepartmentCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? id = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update an exsisting Department',
      apiUrl: '${baseUrl}/department/update/${id}',
      callType: ApiCallType.PUT,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteADepartmentCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? id = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Delete a Department',
      apiUrl: '${baseUrl}/department/delete/${id}',
      callType: ApiCallType.DELETE,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateANewGroupCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create a new Group',
      apiUrl: '${baseUrl}/group/create',
      callType: ApiCallType.POST,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetreiveAGroupCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? id = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retreive a Group',
      apiUrl: '${baseUrl}/group/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAListOfGroupsCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? provider = '',
    int? limit,
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get a list of Groups',
      apiUrl: '${baseUrl}/group/list',
      callType: ApiCallType.GET,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {
        'provider': provider,
        'limit': limit,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SearchAGroupCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? query = '',
    String? filters = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Search a Group',
      apiUrl: '${baseUrl}/group/search',
      callType: ApiCallType.GET,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {
        'query': query,
        'filters': filters,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateASessionCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? id = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update a Session',
      apiUrl: '${baseUrl}/group/update/${id}',
      callType: ApiCallType.PUT,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteAGroupCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? id = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Delete a Group',
      apiUrl: '${baseUrl}/group/delete/${id}',
      callType: ApiCallType.DELETE,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateANewCategoryCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Create a New Category',
      apiUrl: '${baseUrl}/category/create',
      callType: ApiCallType.POST,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetreiveCategoryDetailsCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? id = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retreive Category Details',
      apiUrl: '${baseUrl}/category/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateAnExsistingCategoryCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? id = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Update an exsisting Category',
      apiUrl: '${baseUrl}/category/update/${id}',
      callType: ApiCallType.PUT,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllCategoriesCall {
  Future<ApiCallResponse> call({
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get All Categories',
      apiUrl: '${baseUrl}/category/list',
      callType: ApiCallType.GET,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteACategoryCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? id = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Delete a Category',
      apiUrl: '${baseUrl}/category/delete/${id}',
      callType: ApiCallType.DELETE,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AssignOrUnassignAGivenCategoryToEntitiesCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? action = '',
    String? id = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Assign or Unassign a given category to entities',
      apiUrl: '${baseUrl}/category/${action}/${id}',
      callType: ApiCallType.POST,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddNewTagCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add New Tag',
      apiUrl: '${baseUrl}/tag/add',
      callType: ApiCallType.POST,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAvailableTagsListCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get Available Tags List',
      apiUrl: '${baseUrl}/tag/list',
      callType: ApiCallType.GET,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteATagCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? name = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Delete a Tag',
      apiUrl: '${baseUrl}/tag/delete',
      callType: ApiCallType.DELETE,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {
        'name': name,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddNewItemToTheLibraryCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add new item to the Library',
      apiUrl: '${baseUrl}/library/add',
      callType: ApiCallType.POST,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAListOfItemsInTheLibraryCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    int? limit,
    String? type = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get a list of items in the library',
      apiUrl: '${baseUrl}/library/list/${type}',
      callType: ApiCallType.GET,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {
        'limit': limit,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetrieveAnItemFromLibraryByLearnerCall {
  Future<ApiCallResponse> call({
    String? ref = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retrieve an item from Library by learner',
      apiUrl: '${baseUrl}/learner/library/${ref}',
      callType: ApiCallType.GET,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic? item(dynamic response) => getJsonField(
        response,
        r'''$.item''',
      );
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.item.title''',
      ));
  dynamic? assets(dynamic response) => getJsonField(
        response,
        r'''$.item.assets''',
      );
  int? version(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.item.version''',
      ));
  String? refe(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.item.reference''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.item.type''',
      ));
}

class GetDTFCourseDetailsCall {
  Future<ApiCallResponse> call({
    String? file = '',
    bool? decode = true,
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get DTF course details',
      apiUrl: '${baseUrl}/dtf?file=${file}&decode=${decode}',
      callType: ApiCallType.GET,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic? items(dynamic response) => getJsonField(
        response,
        r'''$.item''',
      );
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.item.title''',
      ));
  dynamic? assets(dynamic response) => getJsonField(
        response,
        r'''$.item.assets''',
      );
  String? dataSource(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.result.Delta.source''',
      ));
  String? sourceType(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.result.Delta.sourceType''',
      ));
}

class SearchInItemsTheLibraryCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? query = '',
    String? filters = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Search in items the library',
      apiUrl: '${baseUrl}/library/search',
      callType: ApiCallType.GET,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {
        'query': query,
        'filters': filters,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ShareWithOthersCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? type = '',
    String? id = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Share with others',
      apiUrl: '${baseUrl}/share/${type}/${id}',
      callType: ApiCallType.POST,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RevertAPreviousSharedCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? type = '',
    String? id = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Revert a Previous Shared',
      apiUrl: '${baseUrl}/unshare/${type}/${id}',
      callType: ApiCallType.PUT,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAListOfCoursesByLearnerCall {
  Future<ApiCallResponse> call({
    int? limit,
    String? scope = 'explore',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get a list of Courses by learner',
      apiUrl: '${baseUrl}/learner/course/${scope}/list',
      callType: ApiCallType.GET,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
      },
      params: {
        'limit': limit,
        'scope': scope,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? results(dynamic response) => getJsonField(
        response,
        r'''$.results''',
        true,
      ) as List?;
  bool? error(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.error''',
      ));
}

class SearchACourseByLearnerCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? query = '',
    String? filters = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Search a Course by learner',
      apiUrl: '${baseUrl}/learner/course/search',
      callType: ApiCallType.GET,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {
        'query': query,
        'filters': filters,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetreiveACourseInformationByLearnerCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retreive a Course Information by learner',
      apiUrl: '${baseUrl}/learner/course/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
      },
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic? course(dynamic response) => getJsonField(
        response,
        r'''$.course''',
      );
  String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.course.name''',
      ));
  String? description(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.course.description''',
      ));
  String? difficultyLevel(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.course.difficultyLevel''',
      ));
  int? rating(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.course.rating''',
      ));
  List? outlines(dynamic response) => getJsonField(
        response,
        r'''$.course.outlines''',
        true,
      ) as List?;
  List? tags(dynamic response) => getJsonField(
        response,
        r'''$.course.tags''',
        true,
      ) as List?;
  List? instructors(dynamic response) => getJsonField(
        response,
        r'''$.course.instructors''',
        true,
      ) as List?;
}

class CreateANewCourseCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create a New Course',
      apiUrl: '${baseUrl}/course/create',
      callType: ApiCallType.POST,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetreiveACourseInformationCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? id = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retreive a Course Information',
      apiUrl: '${baseUrl}/course/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAListOfCoursesCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    int? limit,
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get a list of Courses',
      apiUrl: '${baseUrl}/course/list',
      callType: ApiCallType.GET,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {
        'limit': limit,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SearchACourseCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? query = '',
    String? filters = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Search a Course',
      apiUrl: '${baseUrl}/course/search',
      callType: ApiCallType.GET,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {
        'query': query,
        'filters': filters,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateACourseCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? id = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update a Course',
      apiUrl: '${baseUrl}/course/update/${id}',
      callType: ApiCallType.PUT,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteACourseCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? id = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Delete a Course',
      apiUrl: '${baseUrl}/course/delete/${id}',
      callType: ApiCallType.DELETE,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAListOfProgramsByLearnerCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    int? limit,
    String? scope = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get a list of programs by learner',
      apiUrl: '${baseUrl}/learner/program/${scope}/list',
      callType: ApiCallType.GET,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {
        'limit': limit,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SearchAProgramByLearnerCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? query = '',
    String? filters = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Search a program by learner',
      apiUrl: '${baseUrl}/learner/program/search',
      callType: ApiCallType.GET,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {
        'query': query,
        'filters': filters,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetreiveAProgramInformationByLearnerCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? id = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retreive a program information by learner',
      apiUrl: '${baseUrl}/learner/program/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateANewProgramCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create a New Program',
      apiUrl: '${baseUrl}/program/create',
      callType: ApiCallType.POST,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetreiveAProgramInformationCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? id = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retreive a Program Information',
      apiUrl: '${baseUrl}/program/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAListOfProgramsCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get a list of Programs',
      apiUrl: '${baseUrl}/program/list',
      callType: ApiCallType.GET,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SearchAProgramCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? query = '',
    String? filters = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Search a Program',
      apiUrl: '${baseUrl}/program/search',
      callType: ApiCallType.GET,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {
        'query': query,
        'filters': filters,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateAProgramCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? id = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update a Program',
      apiUrl: '${baseUrl}/program/update/${id}',
      callType: ApiCallType.PUT,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteAProgramCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? id = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Delete a Program',
      apiUrl: '${baseUrl}/program/delete/${id}',
      callType: ApiCallType.DELETE,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateANewSessionCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create a New Session',
      apiUrl: '${baseUrl}/livesession/create',
      callType: ApiCallType.POST,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetreiveASessionCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? id = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retreive a Session',
      apiUrl: '${baseUrl}/livesession/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAListOfSessionsCall {
  Future<ApiCallResponse> call({
    String? type = '',
    String? provider = '',
    int? limit,
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get a list of Sessions',
      apiUrl: '${baseUrl}/livesession/list',
      callType: ApiCallType.GET,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
      },
      params: {
        'type': type,
        'provider': provider,
        'limit': limit,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? sessions(dynamic response) => getJsonField(
        response,
        r'''$.sessions''',
        true,
      ) as List?;
}

class SearchASessionCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? query = '',
    String? filters = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Search a Session',
      apiUrl: '${baseUrl}/livesession/search',
      callType: ApiCallType.GET,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {
        'query': query,
        'filters': filters,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteASessionCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? id = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Delete a Session',
      apiUrl: '${baseUrl}/livesession/delete/${id}',
      callType: ApiCallType.DELETE,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateANewLearningPathCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create a New Learning Path',
      apiUrl: '${baseUrl}/learningpath/create',
      callType: ApiCallType.POST,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetreiveALearningPathCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? id = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retreive a Learning Path',
      apiUrl: '${baseUrl}/learningpath/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAListOfLearningPathsCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get a list of Learning Paths',
      apiUrl: '${baseUrl}/learningpath/list',
      callType: ApiCallType.GET,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SearchALearningPathCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? query = '',
    String? filters = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Search a Learning Path',
      apiUrl: '${baseUrl}/learningpath/search',
      callType: ApiCallType.GET,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {
        'query': query,
        'filters': filters,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateALearningPathCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? id = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update a Learning Path',
      apiUrl: '${baseUrl}/learningpath/update/${id}',
      callType: ApiCallType.PUT,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteALearningPathCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? id = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Delete a Learning Path',
      apiUrl: '${baseUrl}/learningpath/delete/${id}',
      callType: ApiCallType.DELETE,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EnrollToACourseOrProgramCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? id = '',
    String? type = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Enroll to a Course or Program',
      apiUrl: '${baseUrl}/enrollment/add',
      callType: ApiCallType.POST,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetreiveAnEnrollmentCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? id = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retreive an Enrollment',
      apiUrl: '${baseUrl}/enrollment/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAListOfEnrollmentsByALearnerCall {
  Future<ApiCallResponse> call({
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get a list of Enrollments by a Learner',
      apiUrl: '${baseUrl}/enrollment/list',
      callType: ApiCallType.GET,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAListOfEnrollmentsByAAdminOrInstructorCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? targetId = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get a list of Enrollments by a Admin or Instructor',
      apiUrl: '${baseUrl}/enrollment/list/${targetId}',
      callType: ApiCallType.GET,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SearchAnEnrollmentCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? query = '',
    String? filters = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Search an Enrollment',
      apiUrl: '${baseUrl}/enrollment/search',
      callType: ApiCallType.GET,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {
        'query': query,
        'filters': filters,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CancelAnEnrollmentCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? id = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Cancel an Enrollment',
      apiUrl: '${baseUrl}/enrollment/cancel/${id}',
      callType: ApiCallType.PUT,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SuspendAndRevertAnEnrollmentByAdminCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? action = '',
    String? id = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Suspend and Revert an enrollment by Admin',
      apiUrl: '${baseUrl}/enrollment/${action}/${id}',
      callType: ApiCallType.PUT,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeclareALearningProgressStageCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? id = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Declare a Learning Progress Stage',
      apiUrl: '${baseUrl}/classroom/${id}/progress/stage/declare',
      callType: ApiCallType.POST,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateALearningProgressStageRecordCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? id = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Update a Learning Progress Stage Record',
      apiUrl: '${baseUrl}/classroom/${id}/progress/stage/update',
      callType: ApiCallType.PUT,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RecordAnAssessmentResultsCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? id = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Record an Assessment Results',
      apiUrl: '${baseUrl}/classroom/${id}/progress/assessment',
      callType: ApiCallType.POST,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class IssueACertificateToALearnerCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? templateId = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Issue a Certificate to a Learner',
      apiUrl: '${baseUrl}/certificate/${templateId}/issue',
      callType: ApiCallType.POST,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ConfigureAnExtensionCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? id = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Configure an Extension',
      apiUrl: '${baseUrl}/extension/${id}/configure',
      callType: ApiCallType.POST,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetreiveExtensionConfigurationCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? id = '',
    String? configType = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retreive Extension Configuration',
      apiUrl: '${baseUrl}/extension/${id}/${configType}',
      callType: ApiCallType.GET,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateSpecificExtensionConfigurationCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? id = '',
    String? configType = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Update Specific Extension Configuration',
      apiUrl: '${baseUrl}/extension/${id}/${configType}/update',
      callType: ApiCallType.PUT,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class InstallANewExtensionCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Install a new Extension',
      apiUrl: '${baseUrl}/extension/install',
      callType: ApiCallType.POST,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetreiveExtensionCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? id = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retreive Extension',
      apiUrl: '${baseUrl}/extension/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllInstalledExtensionListCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get all installed Extension List',
      apiUrl: '${baseUrl}/extension/list',
      callType: ApiCallType.GET,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SearchAnExtensionCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? query = '',
    String? filters = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Search an Extension',
      apiUrl: '${baseUrl}/extension/search',
      callType: ApiCallType.GET,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {
        'query': query,
        'filters': filters,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UninstallAnExtensionCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? id = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Uninstall an Extension',
      apiUrl: '${baseUrl}/extension/${id}/uninstall',
      callType: ApiCallType.DELETE,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateNewAppCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create new App',
      apiUrl: '${baseUrl}/app/create',
      callType: ApiCallType.POST,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetreiveAppCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? id = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retreive App',
      apiUrl: '${baseUrl}/app/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAppsListCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? type = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get Apps List',
      apiUrl: '${baseUrl}/app/list/${type}',
      callType: ApiCallType.GET,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SearchAnAppCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? query = '',
    String? filters = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Search an App',
      apiUrl: '${baseUrl}/app/search',
      callType: ApiCallType.GET,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {
        'query': query,
        'filters': filters,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateAnAppCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? id = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Update an App',
      apiUrl: '${baseUrl}/app/${id}/update',
      callType: ApiCallType.PUT,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteAnAppCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? id = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Delete an App',
      apiUrl: '${baseUrl}/app/${id}/delete',
      callType: ApiCallType.DELETE,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateNewSiteCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create new site',
      apiUrl: '${baseUrl}/site/create',
      callType: ApiCallType.POST,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetreiveSiteInformationCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? id = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retreive site information',
      apiUrl: '${baseUrl}/site/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetListOfSitesCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    int? limit,
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get list of sites',
      apiUrl: '${baseUrl}/site/list',
      callType: ApiCallType.GET,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {
        'limit': limit,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SearchSiteCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? query = '',
    String? filters = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Search site',
      apiUrl: '${baseUrl}/site/search',
      callType: ApiCallType.GET,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {
        'query': query,
        'filters': filters,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteArchiveASiteCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? id = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Delete/Archive a site',
      apiUrl: '${baseUrl}/site/delete/${id}',
      callType: ApiCallType.DELETE,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RecordASaleCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    bool? attach,
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Record a sale',
      apiUrl: '${baseUrl}/sales',
      callType: ApiCallType.POST,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetreiveSaleDetailsCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? id = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retreive sale details',
      apiUrl: '${baseUrl}/sales/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FetchSalesRecordListCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    int? limit,
    String? status = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Fetch sales record list',
      apiUrl: '${baseUrl}/sales/list',
      callType: ApiCallType.GET,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {
        'limit': limit,
        'status': status,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetSalesStatsCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get Sales Stats',
      apiUrl: '${baseUrl}/sales/stats',
      callType: ApiCallType.GET,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SearchSaleCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    int? query,
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Search sale',
      apiUrl: '${baseUrl}/sales/search',
      callType: ApiCallType.GET,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {
        'query': query,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateSiteInformationCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? id = '',
    String? status = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update Site information',
      apiUrl: '${baseUrl}/sales/${id}/status/${status}',
      callType: ApiCallType.PATCH,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SubscribeCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Subscribe',
      apiUrl: '${baseUrl}/subscription/tenant/add',
      callType: ApiCallType.POST,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PreviousSubscriptionsHistoryCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    int? limit,
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Previous subscriptions history',
      apiUrl: '${baseUrl}/subscription/tenant/history',
      callType: ApiCallType.GET,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {
        'limit': limit,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SearchPreviousSubscriptionCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? query = '',
    String? filters = '',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        '3UXZxpXNypGZ0kWY3hGallGdwZzcnp2axEjNrZWM3o2ctFTM4AHcxpHZ3g2d1oWZzUHdyZWMzoWM1QTcp5mZqZWNx4Wdzk2ax4GdxJ3YihzMrBXZpVjct9mao9mZzoGc0U3MhJXN3Ene0V2dkRXYwZWN0YzZ0omcjRXZylmbzoWMr92aydmayRDdlt2ZhZGe3VXZh5Gd5BHO112a4ETajFnY3U2czIWZz02MlhzMmNWc1RjcudTZyNWb042czl2YuJWbyFzc3AHZ112anNnYx9Wb0UGOzlWcwVXblhTMwFHez02d1NjYxdHZ382Z0VGOuRXNxMXdmBXM1UjcxcjY\$3oJLnUSxtPKDY7mowTEuj1tbZjoB3XS7Xd1u',
    String? lXPAuthRole = 'LEARNER',
    String? lXPAuthDevice = '88670343-3036-4f3a-b8b0-baf8c704d43e',
  }) async {
    final baseUrl = LXPLearningExperiencePortalGroup.getBaseUrl(
      lXPTenantOrigin: lXPTenantOrigin,
      homeOrigin: homeOrigin,
      lXPUserAgent: lXPUserAgent,
      lXPAuthToken: lXPAuthToken,
      lXPAuthRole: lXPAuthRole,
      lXPAuthDevice: lXPAuthDevice,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Search Previous Subscription',
      apiUrl: '${baseUrl}/subscription/history/search',
      callType: ApiCallType.GET,
      headers: {
        'Origin': '${lXPTenantOrigin}',
        'MP-User-Agent': '${lXPUserAgent}',
        'MP-Auth-Token': '${lXPAuthToken}',
        'MP-Auth-Device': '${lXPAuthDevice}',
        'MP-Auth-Role': '${lXPAuthRole}',
        'MP-RO': '${lXPTenantOrigin}',
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {
        'query': query,
        'filters': filters,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End LXP - Learning Experience Portal Group Code

/// Start WEB - Web Application Support Services Group Code

class WEBWebApplicationSupportServicesGroup {
  static String getBaseUrl() => 'http://{{mp_tenantorigin}}';
  static Map<String, String> headers = {};
  static ProxyExtensionRequestCall proxyExtensionRequestCall =
      ProxyExtensionRequestCall();
  static LookupDomainCall lookupDomainCall = LookupDomainCall();
  static GetStripeClientSecretCall getStripeClientSecretCall =
      GetStripeClientSecretCall();
}

class ProxyExtensionRequestCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = WEBWebApplicationSupportServicesGroup.getBaseUrl();

    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Proxy extension request',
      apiUrl: '${baseUrl}/extension/request',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class LookupDomainCall {
  Future<ApiCallResponse> call({
    String? hostname = '',
  }) async {
    final baseUrl = WEBWebApplicationSupportServicesGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Lookup domain',
      apiUrl: '${baseUrl}/lookup',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'hostname': hostname,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetStripeClientSecretCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = WEBWebApplicationSupportServicesGroup.getBaseUrl();

    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Get stripe client secret',
      apiUrl: '${baseUrl}/stripe/cs',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End WEB - Web Application Support Services Group Code

/// Start MDP - Multi-tenancy Data Provider Group Code

class MDPMultiTenancyDataProviderGroup {
  static String getBaseUrl() => 'http://{{mdp_base_url}}';
  static Map<String, String> headers = {};
  static AddNewTenantCall addNewTenantCall = AddNewTenantCall();
  static UpdateTenantDatabaseInformationCall
      updateTenantDatabaseInformationCall =
      UpdateTenantDatabaseInformationCall();
  static DeleteTenantDatabaseCall deleteTenantDatabaseCall =
      DeleteTenantDatabaseCall();
  static InsertCall insertCall = InsertCall();
  static FindCall findCall = FindCall();
  static UpdateCall updateCall = UpdateCall();
  static DeleteCall deleteCall = DeleteCall();
  static AggregateCall aggregateCall = AggregateCall();
}

class AddNewTenantCall {
  Future<ApiCallResponse> call({
    String? mdpAccessToken = '',
    String? mdpUserAgent = '',
    String? origin = '',
  }) async {
    final baseUrl = MDPMultiTenancyDataProviderGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Add new Tenant',
      apiUrl: '${baseUrl}/tenant/add',
      callType: ApiCallType.POST,
      headers: {
        'mdp-access-token': '${mdpAccessToken}',
        'mdp-user-agent': '${mdpUserAgent}',
        'origin': '${origin}',
      },
      params: {},
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateTenantDatabaseInformationCall {
  Future<ApiCallResponse> call({
    String? mdpAccessToken = '',
    String? mdpUserAgent = '',
    String? origin = '',
    String? id = '',
  }) async {
    final baseUrl = MDPMultiTenancyDataProviderGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Update tenant database information',
      apiUrl: '${baseUrl}/tenant/${id}/update',
      callType: ApiCallType.PUT,
      headers: {
        'mdp-access-token': '${mdpAccessToken}',
        'mdp-user-agent': '${mdpUserAgent}',
        'origin': '${origin}',
      },
      params: {},
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteTenantDatabaseCall {
  Future<ApiCallResponse> call({
    String? mdpAccessToken = '',
    String? mdpUserAgent = '',
    String? origin = '',
    String? id = '',
  }) async {
    final baseUrl = MDPMultiTenancyDataProviderGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete tenant database',
      apiUrl: '${baseUrl}/tenant/${id}/drop',
      callType: ApiCallType.DELETE,
      headers: {
        'mdp-access-token': '${mdpAccessToken}',
        'mdp-user-agent': '${mdpUserAgent}',
        'origin': '${origin}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class InsertCall {
  Future<ApiCallResponse> call({
    String? mdpAccessToken = '',
    String? mdpUserAgent = '',
    String? mdpTenantId = '',
    String? origin = '',
  }) async {
    final baseUrl = MDPMultiTenancyDataProviderGroup.getBaseUrl();

    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Insert',
      apiUrl: '${baseUrl}/query/insert',
      callType: ApiCallType.POST,
      headers: {
        'mdp-access-token': '${mdpAccessToken}',
        'mdp-user-agent': '${mdpUserAgent}',
        'mdp-tenant-id': '${mdpTenantId}',
        'origin': '${origin}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FindCall {
  Future<ApiCallResponse> call({
    String? mdpAccessToken = '',
    String? mdpUserAgent = '',
    String? mdpTenantId = '',
    String? origin = '',
    String? target = '',
  }) async {
    final baseUrl = MDPMultiTenancyDataProviderGroup.getBaseUrl();

    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Find',
      apiUrl: '${baseUrl}/query/find',
      callType: ApiCallType.POST,
      headers: {
        'mdp-access-token': '${mdpAccessToken}',
        'mdp-user-agent': '${mdpUserAgent}',
        'mdp-tenant-id': '${mdpTenantId}',
        'origin': '${origin}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateCall {
  Future<ApiCallResponse> call({
    String? mdpAccessToken = '',
    String? mdpUserAgent = '',
    String? mdpTenantId = '',
    String? origin = '',
  }) async {
    final baseUrl = MDPMultiTenancyDataProviderGroup.getBaseUrl();

    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update',
      apiUrl: '${baseUrl}/query/update',
      callType: ApiCallType.PUT,
      headers: {
        'mdp-access-token': '${mdpAccessToken}',
        'mdp-user-agent': '${mdpUserAgent}',
        'mdp-tenant-id': '${mdpTenantId}',
        'origin': '${origin}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteCall {
  Future<ApiCallResponse> call({
    String? mdpAccessToken = '',
    String? mdpUserAgent = '',
    String? mdpTenantId = '',
    String? origin = '',
    String? target = '',
  }) async {
    final baseUrl = MDPMultiTenancyDataProviderGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete',
      apiUrl: '${baseUrl}/query/delete',
      callType: ApiCallType.DELETE,
      headers: {
        'mdp-access-token': '${mdpAccessToken}',
        'mdp-user-agent': '${mdpUserAgent}',
        'mdp-tenant-id': '${mdpTenantId}',
        'origin': '${origin}',
      },
      params: {
        'target': target,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AggregateCall {
  Future<ApiCallResponse> call({
    String? mdpAccessToken = '',
    String? mdpUserAgent = '',
    String? mdpTenantId = '',
    String? origin = '',
  }) async {
    final baseUrl = MDPMultiTenancyDataProviderGroup.getBaseUrl();

    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Aggregate',
      apiUrl: '${baseUrl}/query/aggregate',
      callType: ApiCallType.POST,
      headers: {
        'mdp-access-token': '${mdpAccessToken}',
        'mdp-user-agent': '${mdpUserAgent}',
        'mdp-tenant-id': '${mdpTenantId}',
        'origin': '${origin}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End MDP - Multi-tenancy Data Provider Group Code

class SigningCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Signing',
      apiUrl: 'https://auth.multipple.com/v1/signin',
      callType: ApiCallType.POST,
      headers: {
        'Origin': 'https://sdt.multipple.com',
        'MP-User-Agent': 'MP.WEB/2.0',
      },
      params: {
        'email': "eagah@sdt.edu.gh",
        'password': "@Time2fly",
        'device': "{\"platform\":\"Android 9.0\", \"model\":\"Samsung S8\"}",
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetVTSDataCall {
  static Future<ApiCallResponse> call({
    String? url = 'https://vts.webmicros.com/v1/video/hYWXMOVRxvfz',
    String? vtsNamespace = 'school-oBtUghCrb0v',
    String? vtsAccessToken =
        'eE9nPRXKzPDlkOTc1NjQyN2M1NGUjZTg5yNRzi3gR2M0Zcj9GVNxZKTI4MzY3ND2N5aSpkQr6NjNDOpdoU07DddWOO',
    String? vtsApplication = 'Multipple',
    String? vtsUserAgent = 'MP.WEB/2.0',
    String? origin = 'https://sdt.multipple.com',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get VTS Data',
      apiUrl: '${url}',
      callType: ApiCallType.GET,
      headers: {
        'vts-namespace': '${vtsNamespace}',
        'vts-access-token': '${vtsAccessToken}',
        'vts-application': '${vtsApplication}',
        'vts-user-agent': '${vtsUserAgent}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? originalUrl(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.dataset.sources.original''',
      ));
  static String? hlsUrl(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.dataset.sources.hls''',
      ));
  static bool? error(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.error''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
