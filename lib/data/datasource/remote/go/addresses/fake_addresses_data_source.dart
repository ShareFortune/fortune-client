import 'package:fortune_client/data/datasource/remote/go/addresses/addresses_data_source.dart';
import 'package:fortune_client/data/model/addresses/get_v1_addresses_response.dart';
import 'package:fortune_client/gen/assets.gen.dart';
import 'package:fortune_client/util/common/json_utils.dart';

class FakeAddressesDataSource implements AddressesDataSource {
  @override
  Future<GetV1AddressesResponse> search({String? city}) async {
    return GetV1AddressesResponse.fromJson(
      await JsonUtils.load(Assets.stub.addressesResponse),
    );
  }
}
