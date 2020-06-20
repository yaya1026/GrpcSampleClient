import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:grpcsampleclient/client/game_client.dart';
import 'package:grpcsampleclient/generated/game.pb.dart';
import 'package:grpcsampleclient/generated/google/protobuf/empty.pb.dart';

class FetchDataStore with ChangeNotifier {
  GameReview gameReview = GameReview();
  GameReviews gameReviews = GameReviews();

  FetchDataStore() {
    getReviews();
  }

  Future<void> getReview() async {
    final grpcClient = GameClient();
    final request = GameReviewRequest()..id = Int64.parseInt('1');

    try {
      final client = await grpcClient.create();
      final response = await client.getGameReview(request);
      gameReview = response;
      print(gameReviews);
      notifyListeners();
    } finally {
      await grpcClient.shutdown();
    }
  }

  Future<void> getReviews() async {
    final grpcClient = GameClient();

    try {
      final client = await grpcClient.create();
      final response = await client.getGameReviews(Empty());
      gameReviews = response;
      print(gameReviews);
      notifyListeners();
    } finally {
      await grpcClient.shutdown();
    }
  }
}
