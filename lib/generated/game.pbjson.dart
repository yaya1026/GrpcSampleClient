///
//  Generated code. Do not modify.
//  source: game.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const User$json = const {
  '1': 'User',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

const GameReview$json = const {
  '1': 'GameReview',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'provider', '3': 3, '4': 1, '5': 9, '10': 'provider'},
    const {'1': 'imageUrl', '3': 4, '4': 1, '5': 9, '10': 'imageUrl'},
    const {'1': 'comment', '3': 5, '4': 1, '5': 9, '10': 'comment'},
    const {'1': 'user', '3': 6, '4': 1, '5': 11, '6': '.User', '10': 'user'},
    const {'1': 'createdAt', '3': 7, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
  ],
};

const GameReviewRequest$json = const {
  '1': 'GameReviewRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
  ],
};

const GameReviews$json = const {
  '1': 'GameReviews',
  '2': const [
    const {'1': 'games', '3': 1, '4': 3, '5': 11, '6': '.GameReview', '10': 'games'},
  ],
};

