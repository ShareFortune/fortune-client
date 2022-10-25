import 'package:fortune_client/domain/entities/const/types.dart';

import 'package:fortune_client/domain/usecases/core/error/failures.dart';
import 'package:fpdart/fpdart.dart';

abstract class RoomRepository {
  Future<Either<Failure, RoomID>> create(Map<String, dynamic> newRoomParams);
}
