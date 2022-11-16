import 'package:fortune_client/domain/entities/models/profile/profile.dart';
import 'package:fortune_client/domain/entities/const/types.dart';
import 'package:fortune_client/domain/repositories/profile.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  @override
  Future<ProfileID> create(String token, {required Profile profile}) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<ProfileID> update(Profile profile) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
