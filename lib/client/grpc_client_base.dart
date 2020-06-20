import 'dart:async';

import 'package:grpc/grpc.dart';

abstract class GrpcClientBase<Client> {
  String host;
  int port;
  ClientChannel channel;
  Client client;

  GrpcClientBase(this.host, this.port) {
    channel = ClientChannel(
      this.host,
      port: this.port,
      options: const ChannelOptions(
        credentials: const ChannelCredentials.insecure(),
      ),
    );
  }

  Future<void> shutdown() async {
    const duration = Duration(seconds: 1);
    final shutdown = _shutdownInternal().timeout(duration, onTimeout: () {
      return true;
    });

    final timeout = await shutdown;
    if (timeout) {
      throw TimeoutException("Could not shutdown the ClientChannel");
    }
  }

  Future<bool> _shutdownInternal() async {
    await channel.shutdown();
    return false;
  }

  Client create({Map<String, String> metadata});
}
