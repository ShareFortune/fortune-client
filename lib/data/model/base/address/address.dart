// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'address.freezed.dart';
part 'address.g.dart';

@freezed
class Address with _$Address {
  const Address._();
  const factory Address({
    @JsonKey(name: 'id', nullable: true) int? id,
    @JsonKey(name: 'country') required String country,
    @JsonKey(name: 'prefecture') required String prefecture,
    @JsonKey(name: 'city') required String city,
  }) = _Address;

  String get text => prefecture + city;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}
