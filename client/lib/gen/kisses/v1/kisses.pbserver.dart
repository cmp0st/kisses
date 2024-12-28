//
//  Generated code. Do not modify.
//  source: kisses/v1/kisses.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'kisses.pb.dart' as $0;
import 'kisses.pbjson.dart';

export 'kisses.pb.dart';

abstract class KissesServiceBase extends $pb.GeneratedService {
  $async.Future<$0.PostKissResponse> postKiss($pb.ServerContext ctx, $0.PostKissRequest request);
  $async.Future<$0.GetKissesResponse> getKisses($pb.ServerContext ctx, $0.GetKissesRequest request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'PostKiss': return $0.PostKissRequest();
      case 'GetKisses': return $0.GetKissesRequest();
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'PostKiss': return this.postKiss(ctx, request as $0.PostKissRequest);
      case 'GetKisses': return this.getKisses(ctx, request as $0.GetKissesRequest);
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => KissesServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => KissesServiceBase$messageJson;
}

