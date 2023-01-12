import 'package:freezed_annotation/freezed_annotation.dart';

part 'address.freezed.dart';
part 'address.g.dart';

@freezed
class Address with _$Address {
  const factory Address({
    required String country,
    required String prefecture,
    required String city,
  }) = _Address;

  @override
  String toString() => country + prefecture + city;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}
