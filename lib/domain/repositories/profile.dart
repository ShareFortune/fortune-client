import 'package:fortune_client/domain/entities/const/types.dart';

import '../entities/models/profile.dart';

abstract class ProfileRepository {
  create(Profile profile);
  update(Profile profile);
  Future<Profile> fetch(UserID id);
}
