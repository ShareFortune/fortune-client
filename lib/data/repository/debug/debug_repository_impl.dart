import 'package:fortune_client/data/datasource/local/shared_pref_data_source.dart';
import 'package:fortune_client/data/repository/debug/debug_repository.dart';
import 'package:fortune_client/util/storage/app_pref_key.dart';

class DebugRepositoryImpl implements DebugRepository {
  final SharedPreferencesDataSource _sharedPreferences;
  DebugRepositoryImpl(this._sharedPreferences) {
    setDummyRoginApi(false);
  }

  @override
  getDummyRoginApi() async {
    return _sharedPreferences.getBool(AppPrefKey.dummyLoginApi.keyString) ??
        false;
  }

  @override
  setDummyRoginApi(bool value) async {
    return _sharedPreferences.setBool(
        AppPrefKey.dummyLoginApi.keyString, value);
  }

  @override
  getAutomaticLogin() async {
    return _sharedPreferences.getBool(AppPrefKey.automaticLogin.keyString) ??
        false;
  }

  @override
  setAutomaticLogin(bool value) async {
    return _sharedPreferences.setBool(
        AppPrefKey.automaticLogin.keyString, value);
  }

  @override
  Future<bool> clearIsProfile() async {
    return _sharedPreferences.remove(AppPrefKey.profileId.keyString);
  }
}
