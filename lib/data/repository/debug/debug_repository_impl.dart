import 'package:fortune_client/data/datasource/local/shared_pref_data_source.dart';
import 'package:fortune_client/data/repository/debug/debug_repository.dart';
import 'package:fortune_client/util/service/storage/app_pref_key.dart';

class DebugRepositoryImpl implements DebugRepository {
  DebugRepositoryImpl(this._pref);

  final SharedPrefDataSource _pref;

  @override
  bool isAutomaticLogin() {
    return _pref.getBool(AppPrefKey.dummyLoginApi.keyString) ?? false;
  }

  @override
  toggleAutomaticLogin() {
    _pref.setBool(AppPrefKey.dummyLoginApi.keyString, !isAutomaticLogin());
  }
}
