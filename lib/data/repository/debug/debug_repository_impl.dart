import 'package:fortune_client/data/datasource/local/shared_pref_data_source.dart';
import 'package:fortune_client/data/repository/debug/debug_repository.dart';
import 'package:fortune_client/util/storage/app_pref_key.dart';

class DebugRepositoryImpl implements DebugRepository {
  final SharedPreferencesDataSource _prefs;
  DebugRepositoryImpl(this._prefs) {
    setDummyRoginApi(false);
  }

  @override
  getDummyRoginApi() async {
    return _prefs.getBool(AppPrefKey.dummyLoginApi.keyString) ?? false;
  }

  @override
  setDummyRoginApi(bool value) async {
    return _prefs.setBool(AppPrefKey.dummyLoginApi.keyString, value);
  }

  @override
  getAutomaticLogin() async {
    return _prefs.getBool(AppPrefKey.automaticLogin.keyString) ?? false;
  }

  @override
  setAutomaticLogin(bool value) async {
    return _prefs.setBool(AppPrefKey.automaticLogin.keyString, value);
  }

  @override
  Future<bool> clearIsProfile() async {
    return _prefs.remove(AppPrefKey.profileId.keyString);
  }
}
