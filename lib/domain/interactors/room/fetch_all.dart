import 'package:fpdart/src/either.dart';

import 'package:fortune_client/domain/usecases/core/error/failures.dart';

import '../../usecases/room/fetch_list.dart';

class RoomFetchAllInteractor implements RoomFetchAllUseCase {
  @override
  Future<Either<Failure, RoomFetchAllResults>> handle(
      RoomFetchAllParams params) {
    // TODO: implement handle
    throw UnimplementedError();
  }
}
