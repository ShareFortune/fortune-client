import 'package:fortune_client/data/datasource/remote/go/addresses/addresses_data_source.dart';
import 'package:fortune_client/data/model/addresses/addresses_response/addresses_response.dart';
import 'package:fortune_client/gen/assets.gen.dart';
import 'package:fortune_client/util/common/json_utils.dart';

class FakeAddressesDataSource implements AddressesDataSource {
  @override
  Future<AddressesResponse> search({String? city}) async {
    return AddressesResponse.fromJson(
      await JsonUtils.load(Assets.stub.addressesResponse),
    );
  }
}
