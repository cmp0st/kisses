//
//  Generated code. Do not modify.
//  source: kisses/v1/kisses.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Kiss extends $pb.GeneratedMessage {
  factory Kiss({
    $core.String? message,
  }) {
    final $result = create();
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }
  Kiss._() : super();
  factory Kiss.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Kiss.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Kiss', package: const $pb.PackageName(_omitMessageNames ? '' : 'kisses.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Kiss clone() => Kiss()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Kiss copyWith(void Function(Kiss) updates) => super.copyWith((message) => updates(message as Kiss)) as Kiss;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Kiss create() => Kiss._();
  Kiss createEmptyInstance() => create();
  static $pb.PbList<Kiss> createRepeated() => $pb.PbList<Kiss>();
  @$core.pragma('dart2js:noInline')
  static Kiss getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Kiss>(create);
  static Kiss? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);
}

class PostKissRequest extends $pb.GeneratedMessage {
  factory PostKissRequest({
    $core.String? from,
    $core.String? to,
    Kiss? kiss,
  }) {
    final $result = create();
    if (from != null) {
      $result.from = from;
    }
    if (to != null) {
      $result.to = to;
    }
    if (kiss != null) {
      $result.kiss = kiss;
    }
    return $result;
  }
  PostKissRequest._() : super();
  factory PostKissRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PostKissRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PostKissRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'kisses.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'from')
    ..aOS(2, _omitFieldNames ? '' : 'to')
    ..aOM<Kiss>(3, _omitFieldNames ? '' : 'kiss', subBuilder: Kiss.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PostKissRequest clone() => PostKissRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PostKissRequest copyWith(void Function(PostKissRequest) updates) => super.copyWith((message) => updates(message as PostKissRequest)) as PostKissRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PostKissRequest create() => PostKissRequest._();
  PostKissRequest createEmptyInstance() => create();
  static $pb.PbList<PostKissRequest> createRepeated() => $pb.PbList<PostKissRequest>();
  @$core.pragma('dart2js:noInline')
  static PostKissRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PostKissRequest>(create);
  static PostKissRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get from => $_getSZ(0);
  @$pb.TagNumber(1)
  set from($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFrom() => $_has(0);
  @$pb.TagNumber(1)
  void clearFrom() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get to => $_getSZ(1);
  @$pb.TagNumber(2)
  set to($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTo() => $_has(1);
  @$pb.TagNumber(2)
  void clearTo() => clearField(2);

  @$pb.TagNumber(3)
  Kiss get kiss => $_getN(2);
  @$pb.TagNumber(3)
  set kiss(Kiss v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasKiss() => $_has(2);
  @$pb.TagNumber(3)
  void clearKiss() => clearField(3);
  @$pb.TagNumber(3)
  Kiss ensureKiss() => $_ensure(2);
}

class PostKissResponse extends $pb.GeneratedMessage {
  factory PostKissResponse() => create();
  PostKissResponse._() : super();
  factory PostKissResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PostKissResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PostKissResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kisses.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PostKissResponse clone() => PostKissResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PostKissResponse copyWith(void Function(PostKissResponse) updates) => super.copyWith((message) => updates(message as PostKissResponse)) as PostKissResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PostKissResponse create() => PostKissResponse._();
  PostKissResponse createEmptyInstance() => create();
  static $pb.PbList<PostKissResponse> createRepeated() => $pb.PbList<PostKissResponse>();
  @$core.pragma('dart2js:noInline')
  static PostKissResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PostKissResponse>(create);
  static PostKissResponse? _defaultInstance;
}

class GetKissesRequest extends $pb.GeneratedMessage {
  factory GetKissesRequest({
    $core.String? to,
  }) {
    final $result = create();
    if (to != null) {
      $result.to = to;
    }
    return $result;
  }
  GetKissesRequest._() : super();
  factory GetKissesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetKissesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetKissesRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'kisses.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'to')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetKissesRequest clone() => GetKissesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetKissesRequest copyWith(void Function(GetKissesRequest) updates) => super.copyWith((message) => updates(message as GetKissesRequest)) as GetKissesRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetKissesRequest create() => GetKissesRequest._();
  GetKissesRequest createEmptyInstance() => create();
  static $pb.PbList<GetKissesRequest> createRepeated() => $pb.PbList<GetKissesRequest>();
  @$core.pragma('dart2js:noInline')
  static GetKissesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetKissesRequest>(create);
  static GetKissesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get to => $_getSZ(0);
  @$pb.TagNumber(1)
  set to($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTo() => $_has(0);
  @$pb.TagNumber(1)
  void clearTo() => clearField(1);
}

class GetKissesResponse extends $pb.GeneratedMessage {
  factory GetKissesResponse({
    $core.Iterable<$core.String>? from,
    $core.Iterable<Kiss>? kisses,
  }) {
    final $result = create();
    if (from != null) {
      $result.from.addAll(from);
    }
    if (kisses != null) {
      $result.kisses.addAll(kisses);
    }
    return $result;
  }
  GetKissesResponse._() : super();
  factory GetKissesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetKissesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetKissesResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'kisses.v1'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'from')
    ..pc<Kiss>(2, _omitFieldNames ? '' : 'kisses', $pb.PbFieldType.PM, subBuilder: Kiss.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetKissesResponse clone() => GetKissesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetKissesResponse copyWith(void Function(GetKissesResponse) updates) => super.copyWith((message) => updates(message as GetKissesResponse)) as GetKissesResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetKissesResponse create() => GetKissesResponse._();
  GetKissesResponse createEmptyInstance() => create();
  static $pb.PbList<GetKissesResponse> createRepeated() => $pb.PbList<GetKissesResponse>();
  @$core.pragma('dart2js:noInline')
  static GetKissesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetKissesResponse>(create);
  static GetKissesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get from => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<Kiss> get kisses => $_getList(1);
}

class KissesServiceApi {
  $pb.RpcClient _client;
  KissesServiceApi(this._client);

  $async.Future<PostKissResponse> postKiss($pb.ClientContext? ctx, PostKissRequest request) =>
    _client.invoke<PostKissResponse>(ctx, 'KissesService', 'PostKiss', request, PostKissResponse())
  ;
  $async.Future<GetKissesResponse> getKisses($pb.ClientContext? ctx, GetKissesRequest request) =>
    _client.invoke<GetKissesResponse>(ctx, 'KissesService', 'GetKisses', request, GetKissesResponse())
  ;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
