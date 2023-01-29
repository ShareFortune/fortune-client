// ignore_for_file: invalid_annotation_target

import 'package:fortune_client/data/model/base/address/address.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_v1_addresses_response.freezed.dart';
part 'get_v1_addresses_response.g.dart';

@freezed
class GetV1AddressesResponse with _$GetV1AddressesResponse {
  const factory GetV1AddressesResponse(
    @JsonKey(name: 'addresses') List<Address> addresses,
  ) = _GetV1AddressesResponse;

  factory GetV1AddressesResponse.fromJson(Map<String, dynamic> json) =>
      _$GetV1AddressesResponseFromJson(json);
}
