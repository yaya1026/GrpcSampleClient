import 'package:grpc/grpc.dart';
import 'package:grpcsampleclient/client/grpc_client_base.dart';
import 'package:grpcsampleclient/generated/game.pbgrpc.dart';

class GameClient extends GrpcClientBase<GameServiceClient> {
  GameClient({String host = "localhost", int port = 8080}) : super(host, port);

  @override
  GameServiceClient create({Map<String, String> metadata}) {
    return GameServiceClient(
      super.channel,
      options: CallOptions(metadata: metadata),
    );
  }
}
