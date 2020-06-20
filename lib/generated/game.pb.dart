///
//  Generated code. Do not modify.
//  source: game.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/timestamp.pb.dart' as $2;

class User extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('User', createEmptyInstance: create)
    ..aInt64(1, 'id')
    ..aOS(2, 'name')
    ..hasRequiredFields = false
  ;

  User._() : super();
  factory User() => create();
  factory User.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory User.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  User clone() => User()..mergeFromMessage(this);
  User copyWith(void Function(User) updates) => super.copyWith((message) => updates(message as User));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static User create() => User._();
  User createEmptyInstance() => create();
  static $pb.PbList<User> createRepeated() => $pb.PbList<User>();
  @$core.pragma('dart2js:noInline')
  static User getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<User>(create);
  static User _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);
}

class GameReview extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GameReview', createEmptyInstance: create)
    ..aInt64(1, 'id')
    ..aOS(2, 'title')
    ..aOS(3, 'provider')
    ..aOS(4, 'imageUrl', protoName: 'imageUrl')
    ..aOS(5, 'comment')
    ..aOM<User>(6, 'user', subBuilder: User.create)
    ..aOM<$2.Timestamp>(7, 'createdAt', protoName: 'createdAt', subBuilder: $2.Timestamp.create)
    ..hasRequiredFields = false
  ;

  GameReview._() : super();
  factory GameReview() => create();
  factory GameReview.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GameReview.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GameReview clone() => GameReview()..mergeFromMessage(this);
  GameReview copyWith(void Function(GameReview) updates) => super.copyWith((message) => updates(message as GameReview));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GameReview create() => GameReview._();
  GameReview createEmptyInstance() => create();
  static $pb.PbList<GameReview> createRepeated() => $pb.PbList<GameReview>();
  @$core.pragma('dart2js:noInline')
  static GameReview getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GameReview>(create);
  static GameReview _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get provider => $_getSZ(2);
  @$pb.TagNumber(3)
  set provider($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasProvider() => $_has(2);
  @$pb.TagNumber(3)
  void clearProvider() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get imageUrl => $_getSZ(3);
  @$pb.TagNumber(4)
  set imageUrl($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasImageUrl() => $_has(3);
  @$pb.TagNumber(4)
  void clearImageUrl() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get comment => $_getSZ(4);
  @$pb.TagNumber(5)
  set comment($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasComment() => $_has(4);
  @$pb.TagNumber(5)
  void clearComment() => clearField(5);

  @$pb.TagNumber(6)
  User get user => $_getN(5);
  @$pb.TagNumber(6)
  set user(User v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasUser() => $_has(5);
  @$pb.TagNumber(6)
  void clearUser() => clearField(6);
  @$pb.TagNumber(6)
  User ensureUser() => $_ensure(5);

  @$pb.TagNumber(7)
  $2.Timestamp get createdAt => $_getN(6);
  @$pb.TagNumber(7)
  set createdAt($2.Timestamp v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasCreatedAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearCreatedAt() => clearField(7);
  @$pb.TagNumber(7)
  $2.Timestamp ensureCreatedAt() => $_ensure(6);
}

class GameReviewRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GameReviewRequest', createEmptyInstance: create)
    ..aInt64(1, 'id')
    ..hasRequiredFields = false
  ;

  GameReviewRequest._() : super();
  factory GameReviewRequest() => create();
  factory GameReviewRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GameReviewRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GameReviewRequest clone() => GameReviewRequest()..mergeFromMessage(this);
  GameReviewRequest copyWith(void Function(GameReviewRequest) updates) => super.copyWith((message) => updates(message as GameReviewRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GameReviewRequest create() => GameReviewRequest._();
  GameReviewRequest createEmptyInstance() => create();
  static $pb.PbList<GameReviewRequest> createRepeated() => $pb.PbList<GameReviewRequest>();
  @$core.pragma('dart2js:noInline')
  static GameReviewRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GameReviewRequest>(create);
  static GameReviewRequest _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GameReviews extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GameReviews', createEmptyInstance: create)
    ..pc<GameReview>(1, 'games', $pb.PbFieldType.PM, subBuilder: GameReview.create)
    ..hasRequiredFields = false
  ;

  GameReviews._() : super();
  factory GameReviews() => create();
  factory GameReviews.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GameReviews.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GameReviews clone() => GameReviews()..mergeFromMessage(this);
  GameReviews copyWith(void Function(GameReviews) updates) => super.copyWith((message) => updates(message as GameReviews));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GameReviews create() => GameReviews._();
  GameReviews createEmptyInstance() => create();
  static $pb.PbList<GameReviews> createRepeated() => $pb.PbList<GameReviews>();
  @$core.pragma('dart2js:noInline')
  static GameReviews getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GameReviews>(create);
  static GameReviews _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GameReview> get games => $_getList(0);
}

