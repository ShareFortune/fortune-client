import 'package:fortune_client/domain/entities/const/types.dart';
import 'package:fortune_client/domain/entities/models/profile/profile.dart';

abstract class ProfileRepository {
  Future<ProfileID> create(
    String token, {
    required Profile profile,
  });
  Future<ProfileID> update(Profile profile);
}
