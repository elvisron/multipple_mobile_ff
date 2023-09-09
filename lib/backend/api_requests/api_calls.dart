import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start APS - Authentication Processing Service Group Code

class APSAuthenticationProcessingServiceGroup {
  static String baseUrl = 'https://auth.multipple.com/v1';
  static Map<String, String> headers = {};
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
  static field2StepVerificationCall field2StepVerificationCall =
      field2StepVerificationCall();
  static SignOutCall signOutCall = SignOutCall();
}

class SignUpCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? aPSBaseURL = 'https://auth.multipple.com/v1',
    String? lXPBaseURL = 'https://lxp.multipple.com/v1',
    String? homeOrigin = 'https://app.multipple.com',
    String? mPTenantOrigin = 'https://sdt.multipple.com',
    String? email = 'eagah@sdt.edu.gh',
    String? password = '@Time2fly',
    String? mPAuthToken =
        'zj7ksuiqk5pks1tgouhqz4acouaed47pum61sajprmhgz5bpgmheuitgtd3e8ubqu3ceuipqwj6qsuipjupq83jpodqhs5rggmpezajqwbhnu3fgkd6gusiqxu6kuzpctmc6safp3u3sswjps37w8ubqdmhkz4ppi5hqdi3pim3q81tqbdhcs4ogs33edijqdd7kgw7q1m4wg3ppxuhhs5wc1u3egwfgabpwg3pcwm36s3iqut31g1pgm53wzzfq1mposhjqzu3gghwpb54qg4icat5rs4rgu551ga3cim3g8h\$3oJLWa2RgoDZVtB2mMBTuLnqqyqVboYR2pZH',
    String? mPAuthRole = 'SUPER',
    String? mPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
    String? mPUserAgents = 'MP.mobile/1.0',
  }) {
    final ffApiRequestBody = '''
{
    "email": "elvisron@gmail.com",
    "password": "@Time2fly",
    "first_name": "Danuel",
    "last_name": "Dimbo",
    "country": {},
    "referer": "",
    "agree_terms": "true"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Sign Up',
      apiUrl: '${APSAuthenticationProcessingServiceGroup.baseUrl}/signup',
      callType: ApiCallType.POST,
      headers: {
        ...APSAuthenticationProcessingServiceGroup.headers,
        'Origin': '${mPTenantOrigin}',
        'MP-User-Agent': '${mPUserAgents}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class SignInCall {
  Future<ApiCallResponse> call({
    String? aPSBaseURL = 'https://auth.multipple.com/v1',
    String? lXPBaseURL = 'https://lxp.multipple.com/v1',
    String? homeOrigin = 'https://app.multipple.com',
    String? mPTenantOrigin = 'https://sdt.multipple.com',
    String? email = 'eagah@sdt.edu.gh',
    String? password = '@Time2fly',
    String? mPAuthToken =
        'zj7ksuiqk5pks1tgouhqz4acouaed47pum61sajprmhgz5bpgmheuitgtd3e8ubqu3ceuipqwj6qsuipjupq83jpodqhs5rggmpezajqwbhnu3fgkd6gusiqxu6kuzpctmc6safp3u3sswjps37w8ubqdmhkz4ppi5hqdi3pim3q81tqbdhcs4ogs33edijqdd7kgw7q1m4wg3ppxuhhs5wc1u3egwfgabpwg3pcwm36s3iqut31g1pgm53wzzfq1mposhjqzu3gghwpb54qg4icat5rs4rgu551ga3cim3g8h\$3oJLWa2RgoDZVtB2mMBTuLnqqyqVboYR2pZH',
    String? mPAuthRole = 'SUPER',
    String? mPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
    String? mPUserAgents = 'MP.mobile/1.0',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Sign In',
      apiUrl: '${APSAuthenticationProcessingServiceGroup.baseUrl}/signin',
      callType: ApiCallType.POST,
      headers: {
        ...APSAuthenticationProcessingServiceGroup.headers,
        'Origin': '${mPTenantOrigin}',
        'MP-User-Agent': '${mPUserAgents}',
      },
      params: {
        'email': email,
        'password': password,
        'device': "{\"platform\":\"Android 9.0\", \"model\":\"Samsung S8\"}",
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic logintoken(dynamic response) => getJsonField(
        response,
        r'''$.credentials.ctoken''',
      );
  dynamic userdevice(dynamic response) => getJsonField(
        response,
        r'''$.credentials''',
      );
  dynamic usertype(dynamic response) => getJsonField(
        response,
        r'''$.credentials.type''',
      );
  dynamic userrole(dynamic response) => getJsonField(
        response,
        r'''$.credentials.role''',
      );
}

class EmailAddressVerificationCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? xUserAgent = '',
    String? aPSBaseURL = 'https://auth.multipple.com/v1',
    String? lXPBaseURL = 'https://lxp.multipple.com/v1',
    String? homeOrigin = 'https://app.multipple.com',
    String? mPTenantOrigin = 'https://sdt.multipple.com',
    String? email = 'eagah@sdt.edu.gh',
    String? password = '@Time2fly',
    String? mPAuthToken =
        'zj7ksuiqk5pks1tgouhqz4acouaed47pum61sajprmhgz5bpgmheuitgtd3e8ubqu3ceuipqwj6qsuipjupq83jpodqhs5rggmpezajqwbhnu3fgkd6gusiqxu6kuzpctmc6safp3u3sswjps37w8ubqdmhkz4ppi5hqdi3pim3q81tqbdhcs4ogs33edijqdd7kgw7q1m4wg3ppxuhhs5wc1u3egwfgabpwg3pcwm36s3iqut31g1pgm53wzzfq1mposhjqzu3gghwpb54qg4icat5rs4rgu551ga3cim3g8h\$3oJLWa2RgoDZVtB2mMBTuLnqqyqVboYR2pZH',
    String? mPAuthRole = 'SUPER',
    String? mPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
    String? mPUserAgents = 'MP.mobile/1.0',
  }) {
    final ffApiRequestBody = '''
{
    "email": "elvisron@gmail.com",
    "evc": "4111",
    "device": {
        "platform":"Android 9.0",
        "model":"Samsung S8"
    }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Email Address Verification',
      apiUrl: '${APSAuthenticationProcessingServiceGroup.baseUrl}/verify/email',
      callType: ApiCallType.POST,
      headers: {
        ...APSAuthenticationProcessingServiceGroup.headers,
        'Origin': '${mPTenantOrigin}',
        'MP-User-Agent': '${mPUserAgents}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ResendVerificationEmailCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? xUserAgent = '',
    String? aPSBaseURL = 'https://auth.multipple.com/v1',
    String? lXPBaseURL = 'https://lxp.multipple.com/v1',
    String? homeOrigin = 'https://app.multipple.com',
    String? mPTenantOrigin = 'https://sdt.multipple.com',
    String? email = 'eagah@sdt.edu.gh',
    String? password = '@Time2fly',
    String? mPAuthToken =
        'zj7ksuiqk5pks1tgouhqz4acouaed47pum61sajprmhgz5bpgmheuitgtd3e8ubqu3ceuipqwj6qsuipjupq83jpodqhs5rggmpezajqwbhnu3fgkd6gusiqxu6kuzpctmc6safp3u3sswjps37w8ubqdmhkz4ppi5hqdi3pim3q81tqbdhcs4ogs33edijqdd7kgw7q1m4wg3ppxuhhs5wc1u3egwfgabpwg3pcwm36s3iqut31g1pgm53wzzfq1mposhjqzu3gghwpb54qg4icat5rs4rgu551ga3cim3g8h\$3oJLWa2RgoDZVtB2mMBTuLnqqyqVboYR2pZH',
    String? mPAuthRole = 'SUPER',
    String? mPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
    String? mPUserAgents = 'MP.mobile/1.0',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Resend Verification Email',
      apiUrl: '${APSAuthenticationProcessingServiceGroup.baseUrl}/resend/email',
      callType: ApiCallType.POST,
      headers: {
        ...APSAuthenticationProcessingServiceGroup.headers,
        'Origin': '${mPTenantOrigin}',
        'MP-User-Agent': '${mPUserAgents}',
      },
      params: {},
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
    String? email = 'eagah@sdt.edu.gh',
    String? password = '@Time2fly',
    String? mPAuthToken =
        'zj7ksuiqk5pks1tgouhqz4acouaed47pum61sajprmhgz5bpgmheuitgtd3e8ubqu3ceuipqwj6qsuipjupq83jpodqhs5rggmpezajqwbhnu3fgkd6gusiqxu6kuzpctmc6safp3u3sswjps37w8ubqdmhkz4ppi5hqdi3pim3q81tqbdhcs4ogs33edijqdd7kgw7q1m4wg3ppxuhhs5wc1u3egwfgabpwg3pcwm36s3iqut31g1pgm53wzzfq1mposhjqzu3gghwpb54qg4icat5rs4rgu551ga3cim3g8h\$3oJLWa2RgoDZVtB2mMBTuLnqqyqVboYR2pZH',
    String? mPAuthRole = 'SUPER',
    String? mPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
    String? mPUserAgents = 'MP.mobile/1.0',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Change Email Address',
      apiUrl: '${APSAuthenticationProcessingServiceGroup.baseUrl}/change-email',
      callType: ApiCallType.PATCH,
      headers: {
        ...APSAuthenticationProcessingServiceGroup.headers,
        'Origin': '${mPTenantOrigin}',
        'MP-User-Agent': '${mPUserAgents}',
      },
      params: {},
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class RequestAResetPasswordLinkCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? xUserAgent = '',
    String? aPSBaseURL = 'https://auth.multipple.com/v1',
    String? lXPBaseURL = 'https://lxp.multipple.com/v1',
    String? homeOrigin = 'https://app.multipple.com',
    String? mPTenantOrigin = 'https://sdt.multipple.com',
    String? email = 'eagah@sdt.edu.gh',
    String? password = '@Time2fly',
    String? mPAuthToken =
        'zj7ksuiqk5pks1tgouhqz4acouaed47pum61sajprmhgz5bpgmheuitgtd3e8ubqu3ceuipqwj6qsuipjupq83jpodqhs5rggmpezajqwbhnu3fgkd6gusiqxu6kuzpctmc6safp3u3sswjps37w8ubqdmhkz4ppi5hqdi3pim3q81tqbdhcs4ogs33edijqdd7kgw7q1m4wg3ppxuhhs5wc1u3egwfgabpwg3pcwm36s3iqut31g1pgm53wzzfq1mposhjqzu3gghwpb54qg4icat5rs4rgu551ga3cim3g8h\$3oJLWa2RgoDZVtB2mMBTuLnqqyqVboYR2pZH',
    String? mPAuthRole = 'SUPER',
    String? mPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
    String? mPUserAgents = 'MP.mobile/1.0',
  }) {
    final ffApiRequestBody = '''
{
    "email": "elvisron@gmail.com",
    "country": {},
    "device": {
        "platform": "Android 9.0",
        "model": "Samsung S8"
    }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Request a Reset Password Link',
      apiUrl:
          '${APSAuthenticationProcessingServiceGroup.baseUrl}/reset-pwd/link',
      callType: ApiCallType.POST,
      headers: {
        ...APSAuthenticationProcessingServiceGroup.headers,
        'Origin': '${mPTenantOrigin}',
        'MP-User-Agent': '${mPUserAgents}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ResetANewPasswordCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? xUserAgent = '',
    String? aPSBaseURL = 'https://auth.multipple.com/v1',
    String? lXPBaseURL = 'https://lxp.multipple.com/v1',
    String? homeOrigin = 'https://app.multipple.com',
    String? mPTenantOrigin = 'https://sdt.multipple.com',
    String? email = 'eagah@sdt.edu.gh',
    String? password = '@Time2fly',
    String? mPAuthToken =
        'zj7ksuiqk5pks1tgouhqz4acouaed47pum61sajprmhgz5bpgmheuitgtd3e8ubqu3ceuipqwj6qsuipjupq83jpodqhs5rggmpezajqwbhnu3fgkd6gusiqxu6kuzpctmc6safp3u3sswjps37w8ubqdmhkz4ppi5hqdi3pim3q81tqbdhcs4ogs33edijqdd7kgw7q1m4wg3ppxuhhs5wc1u3egwfgabpwg3pcwm36s3iqut31g1pgm53wzzfq1mposhjqzu3gghwpb54qg4icat5rs4rgu551ga3cim3g8h\$3oJLWa2RgoDZVtB2mMBTuLnqqyqVboYR2pZH',
    String? mPAuthRole = 'SUPER',
    String? mPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
    String? mPUserAgents = 'MP.mobile/1.0',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Reset a New Password',
      apiUrl: '${APSAuthenticationProcessingServiceGroup.baseUrl}/reset-pwd',
      callType: ApiCallType.PATCH,
      headers: {
        ...APSAuthenticationProcessingServiceGroup.headers,
        'Origin': '${mPTenantOrigin}',
        'MP-User-Agent': '${mPUserAgents}',
      },
      params: {
        'new_password': password,
        'token':
            "pdkj8amL4amASotO8nE78bGTf4vyjeckmEHAa5FcKXCk9OzUpvdA52rrOu4UfD5COnknNOozJUNuLqbCtNX34ouOJBFk4sz8iPR8jfWgEcehm2buIxVxiCA1tzGz5OtKvxB1w7QNr4BmSvLN12JG19h3Zftxn6EAd1\$3oJLnS414kU6CykfY5P33Ghjaz9NEucybAP5",
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
    String? email = 'eagah@sdt.edu.gh',
    String? password = '@Time2fly',
    String? mPAuthToken =
        'zj7ksuiqk5pks1tgouhqz4acouaed47pum61sajprmhgz5bpgmheuitgtd3e8ubqu3ceuipqwj6qsuipjupq83jpodqhs5rggmpezajqwbhnu3fgkd6gusiqxu6kuzpctmc6safp3u3sswjps37w8ubqdmhkz4ppi5hqdi3pim3q81tqbdhcs4ogs33edijqdd7kgw7q1m4wg3ppxuhhs5wc1u3egwfgabpwg3pcwm36s3iqut31g1pgm53wzzfq1mposhjqzu3gghwpb54qg4icat5rs4rgu551ga3cim3g8h\$3oJLWa2RgoDZVtB2mMBTuLnqqyqVboYR2pZH',
    String? mPAuthRole = 'SUPER',
    String? mPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
    String? mPUserAgents = 'MP.mobile/1.0',
  }) {
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
      apiUrl:
          '${APSAuthenticationProcessingServiceGroup.baseUrl}/two-step/${action}',
      callType: ApiCallType.PATCH,
      headers: {
        ...APSAuthenticationProcessingServiceGroup.headers,
        'Origin': '${mPTenantOrigin}',
        'MP-User-Agent': '${mPUserAgents}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class field2StepVerificationCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? xUserAgent = '',
    String? type = 'code',
    String? aPSBaseURL = 'https://auth.multipple.com/v1',
    String? lXPBaseURL = 'https://lxp.multipple.com/v1',
    String? homeOrigin = 'https://app.multipple.com',
    String? mPTenantOrigin = 'https://sdt.multipple.com',
    String? email = 'eagah@sdt.edu.gh',
    String? password = '@Time2fly',
    String? mPAuthToken =
        'zj7ksuiqk5pks1tgouhqz4acouaed47pum61sajprmhgz5bpgmheuitgtd3e8ubqu3ceuipqwj6qsuipjupq83jpodqhs5rggmpezajqwbhnu3fgkd6gusiqxu6kuzpctmc6safp3u3sswjps37w8ubqdmhkz4ppi5hqdi3pim3q81tqbdhcs4ogs33edijqdd7kgw7q1m4wg3ppxuhhs5wc1u3egwfgabpwg3pcwm36s3iqut31g1pgm53wzzfq1mposhjqzu3gghwpb54qg4icat5rs4rgu551ga3cim3g8h\$3oJLWa2RgoDZVtB2mMBTuLnqqyqVboYR2pZH',
    String? mPAuthRole = 'SUPER',
    String? mPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
    String? mPUserAgents = 'MP.mobile/1.0',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: '2-Step Verification',
      apiUrl:
          '${APSAuthenticationProcessingServiceGroup.baseUrl}/two-step/verify/${type}',
      callType: ApiCallType.POST,
      headers: {
        ...APSAuthenticationProcessingServiceGroup.headers,
        'Origin': '${mPTenantOrigin}',
        'MP-User-Agent': '${mPUserAgents}',
      },
      params: {
        'token':
            "sGF7DBAKLsQNXj98ysG8rzrDaPPZuIflOvJ7qKexET00PNquF6n3VOqxDIF6wPtmYqmJMQl7sgeLC8CYSnftOm4d",
        'index': "9069",
        'email': email,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
    String? email = 'eagah@sdt.edu.gh',
    String? password = '@Time2fly',
    String? mPAuthToken =
        'zj7ksuiqk5pks1tgouhqz4acouaed47pum61sajprmhgz5bpgmheuitgtd3e8ubqu3ceuipqwj6qsuipjupq83jpodqhs5rggmpezajqwbhnu3fgkd6gusiqxu6kuzpctmc6safp3u3sswjps37w8ubqdmhkz4ppi5hqdi3pim3q81tqbdhcs4ogs33edijqdd7kgw7q1m4wg3ppxuhhs5wc1u3egwfgabpwg3pcwm36s3iqut31g1pgm53wzzfq1mposhjqzu3gghwpb54qg4icat5rs4rgu551ga3cim3g8h\$3oJLWa2RgoDZVtB2mMBTuLnqqyqVboYR2pZH',
    String? mPAuthRole = 'SUPER',
    String? mPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
    String? mPUserAgents = 'MP.mobile/1.0',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Sign Out',
      apiUrl: '${APSAuthenticationProcessingServiceGroup.baseUrl}/signout',
      callType: ApiCallType.GET,
      headers: {
        ...APSAuthenticationProcessingServiceGroup.headers,
        'MP-User-Agent': '${mPUserAgents}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Device': '${mPAuthDevice}',
        'Origin': '${mPTenantOrigin}',
      },
      params: {},
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End APS - Authentication Processing Service Group Code

/// Start LXP - Learning Experience Portal Group Code

class LXPLearningExperiencePortalGroup {
  static String baseUrl = 'https://lxp.multipple.com/v1';
  static Map<String, String> headers = {
    'Origin': '[LXP_TenantOrigin]',
    'MP-User-Agent': '[LXP_UserAgent]',
    'MP-Auth-Token': '[LXP_AuthToken]',
    'MP-Auth-Device': '[LXP_AuthDevice]',
    'MP-Auth-Role': '[LXP_AuthRole]',
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create Institution',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/institution/create',
      callType: ApiCallType.POST,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class RetrieveInstitutionAccountCall {
  Future<ApiCallResponse> call({
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Retrieve Institution Account',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/institution/account',
      callType: ApiCallType.GET,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
      },
      params: {},
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Retrieve Tenant Information',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/tenant',
      callType: ApiCallType.GET,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
      },
      params: {},
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class CheckAvailableTenantDomainCall {
  Future<ApiCallResponse> call({
    String? checkfor = 'sdt.multipple.com',
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Check Available Tenant Domain',
      apiUrl:
          '${LXPLearningExperiencePortalGroup.baseUrl}/institution/domain/check',
      callType: ApiCallType.GET,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
      },
      params: {
        'checkfor': checkfor,
      },
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Update Institution Infos',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/institution/update',
      callType: ApiCallType.PUT,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
      },
      params: {
        'description': "Testing with new description",
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Update Institution Settings',
      apiUrl:
          '${LXPLearningExperiencePortalGroup.baseUrl}/institution/${subset}/update',
      callType: ApiCallType.PUT,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Update Institution Domains',
      apiUrl:
          '${LXPLearningExperiencePortalGroup.baseUrl}/institution/domains/change',
      callType: ApiCallType.PATCH,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Delete/Close an Institution',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/institution/close',
      callType: ApiCallType.DELETE,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetUserAccountCall {
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Get User Account',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/user/account',
      callType: ApiCallType.GET,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Search User',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/user/search',
      callType: ApiCallType.GET,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {
        'query': query,
      },
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Update User Profile',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/user/profile/update',
      callType: ApiCallType.PUT,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Update User Settings',
      apiUrl:
          '${LXPLearningExperiencePortalGroup.baseUrl}/user/settings/update',
      callType: ApiCallType.PUT,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Delete User Account',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/user/delete',
      callType: ApiCallType.DELETE,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {
        'reasons': reasons,
      },
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Sent invitation to User via email',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/invitation/send',
      callType: ApiCallType.POST,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Accept Invitation',
      apiUrl:
          '${LXPLearningExperiencePortalGroup.baseUrl}/invitation/accept/${token}',
      callType: ApiCallType.POST,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create a New Department',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/department/create',
      callType: ApiCallType.POST,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Retreive Department Details',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/department/${id}',
      callType: ApiCallType.GET,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Get All Departments',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/department/list',
      callType: ApiCallType.GET,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update an exsisting Department',
      apiUrl:
          '${LXPLearningExperiencePortalGroup.baseUrl}/department/update/${id}',
      callType: ApiCallType.PUT,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Delete a Department',
      apiUrl:
          '${LXPLearningExperiencePortalGroup.baseUrl}/department/delete/${id}',
      callType: ApiCallType.DELETE,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create a new Group',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/group/create',
      callType: ApiCallType.POST,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Retreive a Group',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/group/${id}',
      callType: ApiCallType.GET,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Get a list of Groups',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/group/list',
      callType: ApiCallType.GET,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Search a Group',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/group/search',
      callType: ApiCallType.GET,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update a Session',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/group/update/${id}',
      callType: ApiCallType.PUT,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Delete a Group',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/group/delete/${id}',
      callType: ApiCallType.DELETE,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Create a New Category',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/category/create',
      callType: ApiCallType.POST,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Retreive Category Details',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/category/${id}',
      callType: ApiCallType.GET,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Update an exsisting Category',
      apiUrl:
          '${LXPLearningExperiencePortalGroup.baseUrl}/category/update/${id}',
      callType: ApiCallType.PUT,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetAllCategoriesCall {
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Get All Categories',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/category/list',
      callType: ApiCallType.GET,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Delete a Category',
      apiUrl:
          '${LXPLearningExperiencePortalGroup.baseUrl}/category/delete/${id}',
      callType: ApiCallType.DELETE,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Assign or Unassign a given category to entities',
      apiUrl:
          '${LXPLearningExperiencePortalGroup.baseUrl}/category/${action}/${id}',
      callType: ApiCallType.POST,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add New Tag',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/tag/add',
      callType: ApiCallType.POST,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Available Tags List',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/tag/list',
      callType: ApiCallType.GET,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Delete a Tag',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/tag/delete',
      callType: ApiCallType.DELETE,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {
        'name': name,
      },
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add new item to the Library',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/library/add',
      callType: ApiCallType.POST,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Get a list of items in the library',
      apiUrl:
          '${LXPLearningExperiencePortalGroup.baseUrl}/library/list/${type}',
      callType: ApiCallType.GET,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {
        'limit': limit,
      },
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Search in items the library',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/library/search',
      callType: ApiCallType.GET,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
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
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Share with others',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/share/${type}/${id}',
      callType: ApiCallType.POST,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Revert a Previous Shared',
      apiUrl:
          '${LXPLearningExperiencePortalGroup.baseUrl}/unshare/${type}/${id}',
      callType: ApiCallType.PUT,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
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
    );
  }
}

class GetAListOfCoursesByLearnerCall {
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Get a list of Courses by learner',
      apiUrl:
          '${LXPLearningExperiencePortalGroup.baseUrl}/learner/course/${scope}/list',
      callType: ApiCallType.GET,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
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
    );
  }
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Search a Course by learner',
      apiUrl:
          '${LXPLearningExperiencePortalGroup.baseUrl}/learner/course/search',
      callType: ApiCallType.GET,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
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
    );
  }
}

class RetreiveACourseInformationByLearnerCall {
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Retreive a Course Information by learner',
      apiUrl:
          '${LXPLearningExperiencePortalGroup.baseUrl}/learner/course/${id}',
      callType: ApiCallType.GET,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
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
    );
  }
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create a New Course',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/course/create',
      callType: ApiCallType.POST,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Retreive a Course Information',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/course/${id}',
      callType: ApiCallType.GET,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Get a list of Courses',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/course/list',
      callType: ApiCallType.GET,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {
        'limit': limit,
      },
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Search a Course',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/course/search',
      callType: ApiCallType.GET,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
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
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update a Course',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/course/update/${id}',
      callType: ApiCallType.PUT,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Delete a Course',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/course/delete/${id}',
      callType: ApiCallType.DELETE,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Get a list of programs by learner',
      apiUrl:
          '${LXPLearningExperiencePortalGroup.baseUrl}/learner/program/${scope}/list',
      callType: ApiCallType.GET,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Search a program by learner',
      apiUrl:
          '${LXPLearningExperiencePortalGroup.baseUrl}/learner/program/search',
      callType: ApiCallType.GET,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Retreive a program information by learner',
      apiUrl:
          '${LXPLearningExperiencePortalGroup.baseUrl}/learner/program/${id}',
      callType: ApiCallType.GET,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create a New Program',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/program/create',
      callType: ApiCallType.POST,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Retreive a Program Information',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/program/${id}',
      callType: ApiCallType.GET,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Get a list of Programs',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/program/list',
      callType: ApiCallType.GET,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Search a Program',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/program/search',
      callType: ApiCallType.GET,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
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
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update a Program',
      apiUrl:
          '${LXPLearningExperiencePortalGroup.baseUrl}/program/update/${id}',
      callType: ApiCallType.PUT,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Delete a Program',
      apiUrl:
          '${LXPLearningExperiencePortalGroup.baseUrl}/program/delete/${id}',
      callType: ApiCallType.DELETE,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create a New Session',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/livesession/create',
      callType: ApiCallType.POST,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Retreive a Session',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/livesession/${id}',
      callType: ApiCallType.GET,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetAListOfSessionsCall {
  Future<ApiCallResponse> call({
    String? origin = '',
    String? mPUserAgent = '',
    String? mPAuthToken = '',
    String? mPAuthRole = '',
    String? mPAuthDevice = '',
    String? type = '',
    String? provider = '',
    int? limit,
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Get a list of Sessions',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/livesession/list',
      callType: ApiCallType.GET,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {
        'type': type,
        'provider': provider,
        'limit': limit,
      },
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Search a Session',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/livesession/search',
      callType: ApiCallType.GET,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
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
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Delete a Session',
      apiUrl:
          '${LXPLearningExperiencePortalGroup.baseUrl}/livesession/delete/${id}',
      callType: ApiCallType.DELETE,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create a New Learning Path',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/learningpath/create',
      callType: ApiCallType.POST,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Retreive a Learning Path',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/learningpath/${id}',
      callType: ApiCallType.GET,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Get a list of Learning Paths',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/learningpath/list',
      callType: ApiCallType.GET,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Search a Learning Path',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/learningpath/search',
      callType: ApiCallType.GET,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
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
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update a Learning Path',
      apiUrl:
          '${LXPLearningExperiencePortalGroup.baseUrl}/learningpath/update/${id}',
      callType: ApiCallType.PUT,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Delete a Learning Path',
      apiUrl:
          '${LXPLearningExperiencePortalGroup.baseUrl}/learningpath/delete/${id}',
      callType: ApiCallType.DELETE,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
    String? lXPTenantOrigin = 'https://sdt.multipple.com',
    String? homeOrigin = 'https://app.multipple.com',
    String? lXPUserAgent = 'MP.mobile/1.0',
    String? lXPAuthToken =
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Enroll to a Course or Program',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/enrollment/add',
      callType: ApiCallType.POST,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Retreive an Enrollment',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/enrollment/${id}',
      callType: ApiCallType.GET,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetAListOfEnrollmentsByALearnerCall {
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Get a list of Enrollments by a Learner',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/enrollment/list',
      callType: ApiCallType.GET,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Get a list of Enrollments by a Admin or Instructor',
      apiUrl:
          '${LXPLearningExperiencePortalGroup.baseUrl}/enrollment/list/${targetId}',
      callType: ApiCallType.GET,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Search an Enrollment',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/enrollment/search',
      callType: ApiCallType.GET,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
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
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Cancel an Enrollment',
      apiUrl:
          '${LXPLearningExperiencePortalGroup.baseUrl}/enrollment/cancel/${id}',
      callType: ApiCallType.PUT,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Suspend and Revert an enrollment by Admin',
      apiUrl:
          '${LXPLearningExperiencePortalGroup.baseUrl}/enrollment/${action}/${id}',
      callType: ApiCallType.PUT,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Declare a Learning Progress Stage',
      apiUrl:
          '${LXPLearningExperiencePortalGroup.baseUrl}/classroom/${id}/progress/stage/declare',
      callType: ApiCallType.POST,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Update a Learning Progress Stage Record',
      apiUrl:
          '${LXPLearningExperiencePortalGroup.baseUrl}/classroom/${id}/progress/stage/update',
      callType: ApiCallType.PUT,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Record an Assessment Results',
      apiUrl:
          '${LXPLearningExperiencePortalGroup.baseUrl}/classroom/${id}/progress/assessment',
      callType: ApiCallType.POST,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Issue a Certificate to a Learner',
      apiUrl:
          '${LXPLearningExperiencePortalGroup.baseUrl}/certificate/${templateId}/issue',
      callType: ApiCallType.POST,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Configure an Extension',
      apiUrl:
          '${LXPLearningExperiencePortalGroup.baseUrl}/extension/${id}/configure',
      callType: ApiCallType.POST,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Retreive Extension Configuration',
      apiUrl:
          '${LXPLearningExperiencePortalGroup.baseUrl}/extension/${id}/${configType}',
      callType: ApiCallType.GET,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Update Specific Extension Configuration',
      apiUrl:
          '${LXPLearningExperiencePortalGroup.baseUrl}/extension/${id}/${configType}/update',
      callType: ApiCallType.PUT,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Install a new Extension',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/extension/install',
      callType: ApiCallType.POST,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Retreive Extension',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/extension/${id}',
      callType: ApiCallType.GET,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Get all installed Extension List',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/extension/list',
      callType: ApiCallType.GET,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Search an Extension',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/extension/search',
      callType: ApiCallType.GET,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
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
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Uninstall an Extension',
      apiUrl:
          '${LXPLearningExperiencePortalGroup.baseUrl}/extension/${id}/uninstall',
      callType: ApiCallType.DELETE,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create new App',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/app/create',
      callType: ApiCallType.POST,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Retreive App',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/app/${id}',
      callType: ApiCallType.GET,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Apps List',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/app/list/${type}',
      callType: ApiCallType.GET,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Search an App',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/app/search',
      callType: ApiCallType.GET,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
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
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Update an App',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/app/${id}/update',
      callType: ApiCallType.PUT,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Delete an App',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/app/${id}/delete',
      callType: ApiCallType.DELETE,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create new site',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/site/create',
      callType: ApiCallType.POST,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Retreive site information',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/site/${id}',
      callType: ApiCallType.GET,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Get list of sites',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/site/list',
      callType: ApiCallType.GET,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {
        'limit': limit,
      },
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Search site',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/site/search',
      callType: ApiCallType.GET,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
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
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Delete/Archive a site',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/site/delete/${id}',
      callType: ApiCallType.DELETE,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
        'Origin': '${origin}',
        'MP-User-Agent': '${mPUserAgent}',
        'MP-Auth-Token': '${mPAuthToken}',
        'MP-Auth-Role': '${mPAuthRole}',
        'MP-Auth-Device': '${mPAuthDevice}',
      },
      params: {},
      returnBody: false,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Record a sale',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/sales',
      callType: ApiCallType.POST,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Retreive sale details',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/sales/${id}',
      callType: ApiCallType.GET,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Fetch sales record list',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/sales/list',
      callType: ApiCallType.GET,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Sales Stats',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/sales/stats',
      callType: ApiCallType.GET,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Search sale',
      apiUrl: '${LXPLearningExperiencePortalGroup.baseUrl}/sales/search',
      callType: ApiCallType.GET,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update Site information',
      apiUrl:
          '${LXPLearningExperiencePortalGroup.baseUrl}/sales/${id}/status/${status}',
      callType: ApiCallType.PATCH,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Subscribe',
      apiUrl:
          '${LXPLearningExperiencePortalGroup.baseUrl}/subscription/tenant/add',
      callType: ApiCallType.POST,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Previous subscriptions history',
      apiUrl:
          '${LXPLearningExperiencePortalGroup.baseUrl}/subscription/tenant/history',
      callType: ApiCallType.GET,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
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
        'DkBGD3Ec1c02qizDirAzfnv8l71zkuuFCmyuv5Dfn5kE42irkrvnoiGglB3Ahz5h1o5E1iiCm0bzgr1tndexrfufeD93k4ijv78k9vFr6rew6698F9Gnth7mFd4Bl0lwq8oydccsC5enlcy5eqkB13embwDm1GFry2lGbx86kzqikFpnvirma9rroxA3lspfg4fF95Apd4sq1DpylrAcGjFygnclt0AdlG20BCmos6q7iahqbkGvbBn6jssFgvkD7fhf9i3sGk4Dh7yFg1ow6l2\$3oJLbsu6iw4JQ9i9ZHBFxXMa5h6gt9UWBq9d',
    String? lXPAuthRole = 'SUPER',
    String? lXPAuthDevice = '048502b1-d7ac-4ebc-b567-a2a7b1b746de',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Search Previous Subscription',
      apiUrl:
          '${LXPLearningExperiencePortalGroup.baseUrl}/subscription/history/search',
      callType: ApiCallType.GET,
      headers: {
        ...LXPLearningExperiencePortalGroup.headers,
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
    );
  }
}

/// End LXP - Learning Experience Portal Group Code

/// Start WEB - Web Application Support Services Group Code

class WEBWebApplicationSupportServicesGroup {
  static String baseUrl = 'http://{{mp_tenantorigin}}';
  static Map<String, String> headers = {};
  static ProxyExtensionRequestCall proxyExtensionRequestCall =
      ProxyExtensionRequestCall();
  static LookupDomainCall lookupDomainCall = LookupDomainCall();
  static GetStripeClientSecretCall getStripeClientSecretCall =
      GetStripeClientSecretCall();
}

class ProxyExtensionRequestCall {
  Future<ApiCallResponse> call() {
    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Proxy extension request',
      apiUrl:
          '${WEBWebApplicationSupportServicesGroup.baseUrl}/extension/request',
      callType: ApiCallType.POST,
      headers: {
        ...WEBWebApplicationSupportServicesGroup.headers,
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class LookupDomainCall {
  Future<ApiCallResponse> call({
    String? hostname = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Lookup domain',
      apiUrl: '${WEBWebApplicationSupportServicesGroup.baseUrl}/lookup',
      callType: ApiCallType.GET,
      headers: {
        ...WEBWebApplicationSupportServicesGroup.headers,
      },
      params: {
        'hostname': hostname,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetStripeClientSecretCall {
  Future<ApiCallResponse> call() {
    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Get stripe client secret',
      apiUrl: '${WEBWebApplicationSupportServicesGroup.baseUrl}/stripe/cs',
      callType: ApiCallType.POST,
      headers: {
        ...WEBWebApplicationSupportServicesGroup.headers,
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End WEB - Web Application Support Services Group Code

/// Start MDP - Multi-tenancy Data Provider Group Code

class MDPMultiTenancyDataProviderGroup {
  static String baseUrl = 'http://{{mdp_base_url}}';
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
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Add new Tenant',
      apiUrl: '${MDPMultiTenancyDataProviderGroup.baseUrl}/tenant/add',
      callType: ApiCallType.POST,
      headers: {
        ...MDPMultiTenancyDataProviderGroup.headers,
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
    );
  }
}

class UpdateTenantDatabaseInformationCall {
  Future<ApiCallResponse> call({
    String? mdpAccessToken = '',
    String? mdpUserAgent = '',
    String? origin = '',
    String? id = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Update tenant database information',
      apiUrl: '${MDPMultiTenancyDataProviderGroup.baseUrl}/tenant/${id}/update',
      callType: ApiCallType.PUT,
      headers: {
        ...MDPMultiTenancyDataProviderGroup.headers,
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
    );
  }
}

class DeleteTenantDatabaseCall {
  Future<ApiCallResponse> call({
    String? mdpAccessToken = '',
    String? mdpUserAgent = '',
    String? origin = '',
    String? id = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Delete tenant database',
      apiUrl: '${MDPMultiTenancyDataProviderGroup.baseUrl}/tenant/${id}/drop',
      callType: ApiCallType.DELETE,
      headers: {
        ...MDPMultiTenancyDataProviderGroup.headers,
        'mdp-access-token': '${mdpAccessToken}',
        'mdp-user-agent': '${mdpUserAgent}',
        'origin': '${origin}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class InsertCall {
  Future<ApiCallResponse> call({
    String? mdpAccessToken = '',
    String? mdpUserAgent = '',
    String? mdpTenantId = '',
    String? origin = '',
  }) {
    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Insert',
      apiUrl: '${MDPMultiTenancyDataProviderGroup.baseUrl}/query/insert',
      callType: ApiCallType.POST,
      headers: {
        ...MDPMultiTenancyDataProviderGroup.headers,
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
  }) {
    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Find',
      apiUrl: '${MDPMultiTenancyDataProviderGroup.baseUrl}/query/find',
      callType: ApiCallType.POST,
      headers: {
        ...MDPMultiTenancyDataProviderGroup.headers,
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
    );
  }
}

class UpdateCall {
  Future<ApiCallResponse> call({
    String? mdpAccessToken = '',
    String? mdpUserAgent = '',
    String? mdpTenantId = '',
    String? origin = '',
  }) {
    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update',
      apiUrl: '${MDPMultiTenancyDataProviderGroup.baseUrl}/query/update',
      callType: ApiCallType.PUT,
      headers: {
        ...MDPMultiTenancyDataProviderGroup.headers,
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
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Delete',
      apiUrl: '${MDPMultiTenancyDataProviderGroup.baseUrl}/query/delete',
      callType: ApiCallType.DELETE,
      headers: {
        ...MDPMultiTenancyDataProviderGroup.headers,
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
    );
  }
}

class AggregateCall {
  Future<ApiCallResponse> call({
    String? mdpAccessToken = '',
    String? mdpUserAgent = '',
    String? mdpTenantId = '',
    String? origin = '',
  }) {
    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Aggregate',
      apiUrl: '${MDPMultiTenancyDataProviderGroup.baseUrl}/query/aggregate',
      callType: ApiCallType.POST,
      headers: {
        ...MDPMultiTenancyDataProviderGroup.headers,
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
    );
  }
}

/// End MDP - Multi-tenancy Data Provider Group Code

class SigningCall {
  static Future<ApiCallResponse> call() {
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
    );
  }
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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
