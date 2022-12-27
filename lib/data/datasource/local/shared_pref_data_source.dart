abstract class SharedPreferencesDataSource {
  /// Bool
  Future<bool> setBool(String key, bool value);
  bool? getBool(String key);

  /// Int
  Future<bool> setInt(String key, int value);
  int? getInt(String key);

  /// Double
  Future<bool> setDouble(String key, double value);
  double? getDouble(String key);

  /// String
  Future<bool> setString(String key, String value);
  String? getString(String key);

  /// List<String>
  List<String> getStringList(String key);
  Future<bool> setStringList(String key, List<String> value);

  /// 削除
  Future<bool> remove(String key);

  /// クリア
  Future<bool> clear();

  /// 存在確認
  bool contains(String key);
}
