import 'package:fortune_client/data/model/profile/profile.dart';

abstract class ProfileRepository {
  /// 作成済みかどうか
  bool get isCreated;
  Future<String> create();
  Future<String> update();
  Future<Profile> get(String id);
}
