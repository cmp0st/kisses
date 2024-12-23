//
//  Generated code. Do not modify.
//  source: kisses/v1/kisses.proto
//

import "package:connectrpc/connect.dart" as connect;
import "kisses.pb.dart" as kissesv1kisses;
import "kisses.connect.spec.dart" as specs;

extension type KissesServiceClient (connect.Transport _transport) {
  Future<kissesv1kisses.PingResponse> ping(
    kissesv1kisses.PingRequest input, {
    connect.Headers? headers,
    connect.AbortSignal? signal,
    Function(connect.Headers)? onHeader,
    Function(connect.Headers)? onTrailer,
  }) {
    return connect.Client(_transport).unary(
      specs.KissesService.ping,
      input,
      signal: signal,
      headers: headers,
      onHeader: onHeader,
      onTrailer: onTrailer,
    );
  }
}
