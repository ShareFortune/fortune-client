import 'package:fortune_client/data/datasource/remote/go/addresses/addresses_data_source.dart';
import 'package:fortune_client/data/model/addresses/get_v1_addresses_response.dart';

class FakeAddressesDataSource implements AddressesDataSource {
  @override
  Future<GetV1AddressesResponse> search({String? city}) {
    // TODO: implement search
    throw UnimplementedError();
  }
}
