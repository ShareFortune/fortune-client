import 'package:fortune_client/data/model/addresses/address_with_id/address_with_id.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'addresses_response.freezed.dart';
part 'addresses_response.g.dart';

@freezed
class AddressesResponse with _$AddressesResponse {
  const factory AddressesResponse({
    required List<AddressWithId> addresses,
  }) = _AddressesResponse;

  factory AddressesResponse.fromJson(Map<String, dynamic> json) =>
      _$AddressesResponseFromJson(json);
}
