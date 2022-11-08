import 'package:fortune_client/domain/entities/const/types.dart';

abstract class UserRepository {
  Future<UserID> create({
    required String firebaseId,
    required String username,
    required String birthday,
  });
}
