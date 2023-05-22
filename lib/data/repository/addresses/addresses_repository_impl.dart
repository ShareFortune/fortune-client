import 'dart:convert';

import 'package:fortune_client/data/datasource/local/shared_pref_data_source.dart';
import 'package:fortune_client/data/datasource/remote/go/addresses/addresses_data_source.dart';
import 'package:fortune_client/data/model/addresses/address/address.dart';
import 'package:fortune_client/data/model/addresses/address_with_id/address_with_id.dart';
import 'package:fortune_client/data/model/addresses/addresses_response/addresses_response.dart';
import 'package:fortune_client/data/repository/addresses/addresses_repository.dart';
import 'package:fortune_client/util/storage/app_pref_key.dart';

class AddressesRepositoryImpl implements AddressesRepository {
  final SharedPreferencesDataSource _prefs;
  final AddressesDataSource _addressesDataSource;

  AddressesRepositoryImpl(this._addressesDataSource, this._prefs);

  @override
  Future<void> save() async {
    await _prefs.setString(
      AppPrefKey.addresses.keyString,
      jsonEncode(await _addressesDataSource.search(city: '')),
    );
  }

  @override
  Future<List<AddressWithId>> load() async {
    final addresses = _prefs.getString(AppPrefKey.addresses.keyString);
    return AddressesResponse.fromJson(jsonDecode(addresses!)).addresses;
  }

  @override
  Future<List<AddressWithId>> search(String? keyword) async {
    final result = await _addressesDataSource.search(city: keyword);
    return result.addresses;
  }

  @override
  Future<int> getId(Address address) async {
    return load().then((addresses) {
      return addresses.firstWhere((e) {
        if (e.city != address.city) return false;
        if (e.prefecture != address.prefecture) return false;
        return true;
      }).id;
    });
  }
}
