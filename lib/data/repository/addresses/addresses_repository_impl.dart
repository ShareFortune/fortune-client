import 'package:fortune_client/data/datasource/remote/go/addresses/addresses_data_source.dart';
import 'package:fortune_client/data/model/addresses/address/address.dart';
import 'package:fortune_client/data/model/addresses/address_with_id/address_with_id.dart';
import 'package:fortune_client/data/repository/addresses/addresses_repository.dart';
import 'package:fortune_client/util/logger/logger.dart';

class AddressesRepositoryImpl implements AddressesRepository {
  AddressesRepositoryImpl(this._addressesDataSource);

  final AddressesDataSource _addressesDataSource;

  @override
  Future<List<AddressWithId>> search(String keyword) async {
    try {
      final result = await _addressesDataSource.search(city: keyword);
      return result.addresses;
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }

  @override
  Future<int> getId(Address address) async {
    try {
      final result = await _addressesDataSource.search(city: address.city);
      return result.addresses.firstWhere((e) {
        if (e.city != address.city) return false;
        if (e.prefecture != address.prefecture) return false;
        return true;
      }).id;
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }
}
