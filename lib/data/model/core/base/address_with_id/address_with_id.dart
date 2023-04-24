// ignore_for_file: invalid_annotation_target

import 'package:fortune_client/data/model/core/base/address/address.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_with_id.freezed.dart';
part 'address_with_id.g.dart';

@freezed
class AddressWithId with _$AddressWithId {
  const AddressWithId._();

  const factory AddressWithId({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'country') required String country,
    @JsonKey(name: 'prefecture') required String prefecture,
    @JsonKey(name: 'city') required String city,
  }) = _AddressWithId;

  String get text => prefecture + city;

  /// [AddressWithId]を[Address]に変換する
  Address toAddress() => Address(
        country: country,
        prefecture: prefecture,
        city: city,
      );

  factory AddressWithId.fromJson(Map<String, dynamic> json) =>
      _$AddressWithIdFromJson(json);
}
