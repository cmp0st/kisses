//
//  Generated code. Do not modify.
//  source: kisses/v1/kisses.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use kissDescriptor instead')
const Kiss$json = {
  '1': 'Kiss',
  '2': [
    {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `Kiss`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List kissDescriptor = $convert.base64Decode(
    'CgRLaXNzEhgKB21lc3NhZ2UYASABKAlSB21lc3NhZ2U=');

@$core.Deprecated('Use postKissRequestDescriptor instead')
const PostKissRequest$json = {
  '1': 'PostKissRequest',
  '2': [
    {'1': 'from', '3': 1, '4': 1, '5': 9, '10': 'from'},
    {'1': 'to', '3': 2, '4': 1, '5': 9, '10': 'to'},
    {'1': 'kiss', '3': 3, '4': 1, '5': 11, '6': '.kisses.v1.Kiss', '10': 'kiss'},
  ],
};

/// Descriptor for `PostKissRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List postKissRequestDescriptor = $convert.base64Decode(
    'Cg9Qb3N0S2lzc1JlcXVlc3QSEgoEZnJvbRgBIAEoCVIEZnJvbRIOCgJ0bxgCIAEoCVICdG8SIw'
    'oEa2lzcxgDIAEoCzIPLmtpc3Nlcy52MS5LaXNzUgRraXNz');

@$core.Deprecated('Use postKissResponseDescriptor instead')
const PostKissResponse$json = {
  '1': 'PostKissResponse',
};

/// Descriptor for `PostKissResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List postKissResponseDescriptor = $convert.base64Decode(
    'ChBQb3N0S2lzc1Jlc3BvbnNl');

@$core.Deprecated('Use getKissesRequestDescriptor instead')
const GetKissesRequest$json = {
  '1': 'GetKissesRequest',
  '2': [
    {'1': 'to', '3': 1, '4': 1, '5': 9, '10': 'to'},
  ],
};

/// Descriptor for `GetKissesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getKissesRequestDescriptor = $convert.base64Decode(
    'ChBHZXRLaXNzZXNSZXF1ZXN0Eg4KAnRvGAEgASgJUgJ0bw==');

@$core.Deprecated('Use getKissesResponseDescriptor instead')
const GetKissesResponse$json = {
  '1': 'GetKissesResponse',
  '2': [
    {'1': 'from', '3': 1, '4': 3, '5': 9, '10': 'from'},
    {'1': 'kisses', '3': 2, '4': 3, '5': 11, '6': '.kisses.v1.Kiss', '10': 'kisses'},
  ],
};

/// Descriptor for `GetKissesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getKissesResponseDescriptor = $convert.base64Decode(
    'ChFHZXRLaXNzZXNSZXNwb25zZRISCgRmcm9tGAEgAygJUgRmcm9tEicKBmtpc3NlcxgCIAMoCz'
    'IPLmtpc3Nlcy52MS5LaXNzUgZraXNzZXM=');

const $core.Map<$core.String, $core.dynamic> KissesServiceBase$json = {
  '1': 'KissesService',
  '2': [
    {'1': 'PostKiss', '2': '.kisses.v1.PostKissRequest', '3': '.kisses.v1.PostKissResponse', '4': {}},
    {'1': 'GetKisses', '2': '.kisses.v1.GetKissesRequest', '3': '.kisses.v1.GetKissesResponse', '4': {}},
  ],
};

@$core.Deprecated('Use kissesServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> KissesServiceBase$messageJson = {
  '.kisses.v1.PostKissRequest': PostKissRequest$json,
  '.kisses.v1.Kiss': Kiss$json,
  '.kisses.v1.PostKissResponse': PostKissResponse$json,
  '.kisses.v1.GetKissesRequest': GetKissesRequest$json,
  '.kisses.v1.GetKissesResponse': GetKissesResponse$json,
};

/// Descriptor for `KissesService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List kissesServiceDescriptor = $convert.base64Decode(
    'Cg1LaXNzZXNTZXJ2aWNlEkUKCFBvc3RLaXNzEhoua2lzc2VzLnYxLlBvc3RLaXNzUmVxdWVzdB'
    'obLmtpc3Nlcy52MS5Qb3N0S2lzc1Jlc3BvbnNlIgASSAoJR2V0S2lzc2VzEhsua2lzc2VzLnYx'
    'LkdldEtpc3Nlc1JlcXVlc3QaHC5raXNzZXMudjEuR2V0S2lzc2VzUmVzcG9uc2UiAA==');

