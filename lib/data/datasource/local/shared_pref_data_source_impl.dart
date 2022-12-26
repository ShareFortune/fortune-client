import 'package:fimber/fimber.dart';
import 'package:fortune_client/data/datasource/local/shared_pref_data_source.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefDataSourceImpl implements SharedPrefDataSource {
  SharedPrefDataSourceImpl(this._sharedPreferences);

  static const _prefix = 'SharedPrefService';
  final SharedPreferences _sharedPreferences;

  Future<bool> _logger<T>(
      Future<bool> Function(String, T) setter, String key, T value) {
    return setter(key, value).whenComplete(
      () => Fimber.i('[$_prefix] set ${T.runtimeType} for key: $key'),
    );
  }

  @override
  Future<bool> setBool(String key, bool value) {
    return _logger(_sharedPreferences.setBool, key, value);
  }

  @override
  bool? getBool(String key) {
    return _sharedPreferences.getBool(key);
  }

  @override
  Future<bool> setInt(String key, int value) {
    return _logger(_sharedPreferences.setInt, key, value);
  }

  @override
  int? getInt(String key) {
    return _sharedPreferences.getInt(key);
  }

  @override
  Future<bool> setDouble(String key, double value) {
    return _logger(_sharedPreferences.setDouble, key, value);
  }

  @override
  double? getDouble(String key) {
    return _sharedPreferences.getDouble(key);
  }

  @override
  Future<bool> setString(String key, String value) {
    return _logger(_sharedPreferences.setString, key, value);
  }

  @override
  String? getString(String key) {
    return _sharedPreferences.getString(key);
  }

  @override
  List<String> getStringList(String key) {
    return _sharedPreferences.getStringList(key) ?? [];
  }

  @override
  Future<bool> setStringList(String key, List<String> value) async {
    return _logger(_sharedPreferences.setStringList, key, value);
  }

  @override
  Future<bool> remove(String key) {
    return _sharedPreferences
        .remove(key)
        .whenComplete(() => Fimber.i('[$_prefix] removed value for key: $key'));
  }

  @override
  Future<bool> clear() async {
    return _sharedPreferences.clear().whenComplete(
          () => Fimber.i('[$_prefix] cleared all sharedPreferences.'),
        );
  }

  @override
  bool contains(String key) {
    return _sharedPreferences.containsKey(key);
  }
}
