import 'package:fortune_client/data/model/profile/profile.dart';

abstract class ProfileRepository {
  Future<String> create();
  Future<String> update();
  Future<Profile> get(String id);
}
