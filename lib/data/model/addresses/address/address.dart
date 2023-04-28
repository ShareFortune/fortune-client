import 'package:freezed_annotation/freezed_annotation.dart';

part 'address.freezed.dart';
part 'address.g.dart';

@freezed
class Address with _$Address {
  const Address._();
  const factory Address({
    required String country,
    required String prefecture,
    required String city,
  }) = _Address;

  String get text => prefecture + city;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}
