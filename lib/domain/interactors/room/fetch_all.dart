import 'package:fortune_client/domain/usecases/core/error/failures.dart';
import 'package:fortune_client/domain/usecases/room/fetch_list.dart';
import 'package:fpdart/fpdart.dart';

class RoomFetchAllInteractor implements RoomFetchAllUseCase {
  @override
  Future<Either<Failure, RoomFetchAllResults>> handle(
      RoomFetchAllParams params) {
    // TODO: implement handle
    throw UnimplementedError();
  }
}
