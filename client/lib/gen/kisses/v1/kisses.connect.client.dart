//
//  Generated code. Do not modify.
//  source: kisses/v1/kisses.proto
//

import "package:connectrpc/connect.dart" as connect;
import "kisses.pb.dart" as kissesv1kisses;
import "kisses.connect.spec.dart" as specs;

extension type KissesServiceClient (connect.Transport _transport) {
  Future<kissesv1kisses.PostKissResponse> postKiss(
    kissesv1kisses.PostKissRequest input, {
    connect.Headers? headers,
    connect.AbortSignal? signal,
    Function(connect.Headers)? onHeader,
    Function(connect.Headers)? onTrailer,
  }) {
    return connect.Client(_transport).unary(
      specs.KissesService.postKiss,
      input,
      signal: signal,
      headers: headers,
      onHeader: onHeader,
      onTrailer: onTrailer,
    );
  }

  Future<kissesv1kisses.GetKissesResponse> getKisses(
    kissesv1kisses.GetKissesRequest input, {
    connect.Headers? headers,
    connect.AbortSignal? signal,
    Function(connect.Headers)? onHeader,
    Function(connect.Headers)? onTrailer,
  }) {
    return connect.Client(_transport).unary(
      specs.KissesService.getKisses,
      input,
      signal: signal,
      headers: headers,
      onHeader: onHeader,
      onTrailer: onTrailer,
    );
  }
}
