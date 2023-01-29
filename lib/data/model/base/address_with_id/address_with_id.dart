// ignore_for_file: invalid_annotation_target

import 'package:fortune_client/data/model/base/address/address.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_with_id.freezed.dart';
part 'address_with_id.g.dart';

@freezed
class AddressWithId with _$AddressWithId {
  const factory AddressWithId({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'address') required Address data,
  }) = _AddressWithId;

  factory AddressWithId.fromJson(Map<String, dynamic> json) =>
      _$AddressWithIdFromJson(json);
}
