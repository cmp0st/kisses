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

@$core.Deprecated('Use pingRequestDescriptor instead')
const PingRequest$json = {
  '1': 'PingRequest',
};

/// Descriptor for `PingRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pingRequestDescriptor = $convert.base64Decode(
    'CgtQaW5nUmVxdWVzdA==');

@$core.Deprecated('Use pingResponseDescriptor instead')
const PingResponse$json = {
  '1': 'PingResponse',
  '2': [
    {'1': 'msg', '3': 1, '4': 1, '5': 9, '10': 'msg'},
  ],
};

/// Descriptor for `PingResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pingResponseDescriptor = $convert.base64Decode(
    'CgxQaW5nUmVzcG9uc2USEAoDbXNnGAEgASgJUgNtc2c=');

const $core.Map<$core.String, $core.dynamic> KissesServiceBase$json = {
  '1': 'KissesService',
  '2': [
    {'1': 'Ping', '2': '.kisses.v1.PingRequest', '3': '.kisses.v1.PingResponse', '4': {}},
  ],
};

@$core.Deprecated('Use kissesServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> KissesServiceBase$messageJson = {
  '.kisses.v1.PingRequest': PingRequest$json,
  '.kisses.v1.PingResponse': PingResponse$json,
};

/// Descriptor for `KissesService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List kissesServiceDescriptor = $convert.base64Decode(
    'Cg1LaXNzZXNTZXJ2aWNlEjkKBFBpbmcSFi5raXNzZXMudjEuUGluZ1JlcXVlc3QaFy5raXNzZX'
    'MudjEuUGluZ1Jlc3BvbnNlIgA=');

