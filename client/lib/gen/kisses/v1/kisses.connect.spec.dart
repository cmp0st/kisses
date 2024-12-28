//
//  Generated code. Do not modify.
//  source: kisses/v1/kisses.proto
//

import "package:connectrpc/connect.dart" as connect;
import "kisses.pb.dart" as kissesv1kisses;

abstract final class KissesService {
  /// Fully-qualified name of the KissesService service.
  static const name = 'kisses.v1.KissesService';

  static const postKiss = connect.Spec(
    '/$name/PostKiss',
    connect.StreamType.unary,
    kissesv1kisses.PostKissRequest.new,
    kissesv1kisses.PostKissResponse.new,
  );

  static const getKisses = connect.Spec(
    '/$name/GetKisses',
    connect.StreamType.unary,
    kissesv1kisses.GetKissesRequest.new,
    kissesv1kisses.GetKissesResponse.new,
  );
}
