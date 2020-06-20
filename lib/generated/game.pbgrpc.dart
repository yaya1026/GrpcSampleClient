///
//  Generated code. Do not modify.
//  source: game.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'google/protobuf/empty.pb.dart' as $0;
import 'game.pb.dart' as $1;
export 'game.pb.dart';

class GameServiceClient extends $grpc.Client {
  static final _$getGameReviews = $grpc.ClientMethod<$0.Empty, $1.GameReviews>(
      '/GameService/GetGameReviews',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GameReviews.fromBuffer(value));
  static final _$getGameReview =
      $grpc.ClientMethod<$1.GameReviewRequest, $1.GameReview>(
          '/GameService/GetGameReview',
          ($1.GameReviewRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.GameReview.fromBuffer(value));

  GameServiceClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$1.GameReviews> getGameReviews($0.Empty request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getGameReviews, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.GameReview> getGameReview(
      $1.GameReviewRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getGameReview, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class GameServiceBase extends $grpc.Service {
  $core.String get $name => 'GameService';

  GameServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.GameReviews>(
        'GetGameReviews',
        getGameReviews_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.GameReviews value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GameReviewRequest, $1.GameReview>(
        'GetGameReview',
        getGameReview_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GameReviewRequest.fromBuffer(value),
        ($1.GameReview value) => value.writeToBuffer()));
  }

  $async.Future<$1.GameReviews> getGameReviews_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getGameReviews(call, await request);
  }

  $async.Future<$1.GameReview> getGameReview_Pre($grpc.ServiceCall call,
      $async.Future<$1.GameReviewRequest> request) async {
    return getGameReview(call, await request);
  }

  $async.Future<$1.GameReviews> getGameReviews(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.GameReview> getGameReview(
      $grpc.ServiceCall call, $1.GameReviewRequest request);
}
