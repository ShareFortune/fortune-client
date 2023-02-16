// ignore_for_file: invalid_annotation_target

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

  factory AddressWithId.fromJson(Map<String, dynamic> json) =>
      _$AddressWithIdFromJson(json);
}
