import 'package:fortune_client/data/datasource/local/shared_pref_data_source.dart';
import 'package:fortune_client/data/repository/debug/debug_repository.dart';
import 'package:fortune_client/util/service/storage/app_pref_key.dart';

class DebugRepositoryImpl implements DebugRepository {
  final SharedPrefDataSource _pref;

  DebugRepositoryImpl(this._pref) {
    setDummyRoginApi(false);
  }

  @override
  getDummyRoginApi() async {
    return _pref.getBool(AppPrefKey.dummyLoginApi.keyString) ?? false;
  }

  @override
  setDummyRoginApi(bool value) async {
    _pref.setBool(AppPrefKey.dummyLoginApi.keyString, value);
  }

  @override
  getAutomaticLogin() async {
    return _pref.getBool(AppPrefKey.automaticLogin.keyString) ?? false;
  }

  @override
  setAutomaticLogin(bool value) async {
    _pref.setBool(AppPrefKey.automaticLogin.keyString, value);
  }
}
