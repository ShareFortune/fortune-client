import 'package:fortune_client/data/datasource/remote/go/addresses/addresses_data_source.dart';
import 'package:fortune_client/data/model/address/address.dart';
import 'package:fortune_client/data/repository/addresses/addresses_repository.dart';
import 'package:fortune_client/util/logger/logger.dart';

class AddressesRepositoryImpl implements AddressesRepository {
  AddressesRepositoryImpl(this._addressesDataSource);

  final AddressesDataSource _addressesDataSource;

  @override
  Future<Addresses> search(String keyword) async {
    try {
      logger.i("[$runtimeType] search");
      return await _addressesDataSource.search(city: keyword);
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }
}
