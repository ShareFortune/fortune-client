import 'package:fortune_client/data/datasource/remote/go/addresses/addresses_data_source.dart';
import 'package:fortune_client/data/model/core/base/address/address.dart';
import 'package:fortune_client/data/model/core/base/address_with_id/address_with_id.dart';
import 'package:fortune_client/data/repository/addresses/addresses_repository.dart';
import 'package:fortune_client/util/logger/logger.dart';

class AddressesRepositoryImpl implements AddressesRepository {
  AddressesRepositoryImpl(this._addressesDataSource);

  final AddressesDataSource _addressesDataSource;

  @override
  Future<List<AddressWithId>> search(String keyword) async {
    try {
      logger.i("[$runtimeType] search");
      final result = await _addressesDataSource.search(city: keyword);
      return result.data;
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }
}