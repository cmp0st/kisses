//
//  Generated code. Do not modify.
//  source: kisses/v1/kisses.proto
//

import "package:connectrpc/connect.dart" as connect;
import "kisses.pb.dart" as kissesv1kisses;

abstract final class KissesService {
  /// Fully-qualified name of the KissesService service.
  static const name = 'kisses.v1.KissesService';

  static const ping = connect.Spec(
    '/$name/Ping',
    connect.StreamType.unary,
    kissesv1kisses.PingRequest.new,
    kissesv1kisses.PingResponse.new,
  );
}
