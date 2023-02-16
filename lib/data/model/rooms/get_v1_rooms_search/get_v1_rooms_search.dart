// ignore_for_file: invalid_annotation_target

import 'package:fortune_client/data/model/core/base/room/room.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_v1_rooms_search.freezed.dart';
part 'get_v1_rooms_search.g.dart';

@freezed
class GetV1RoomsSearchResponse with _$GetV1RoomsSearchResponse {
  const factory GetV1RoomsSearchResponse({
    @JsonKey(name: "nextToken") required String nextToken,
    @JsonKey(name: "rooms") required Room rooms,
  }) = _GetV1RoomsSearchResponse;

  factory GetV1RoomsSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$GetV1RoomsSearchResponseFromJson(json);
}
