import 'package:fpdart/fpdart.dart';

import 'error/failures.dart';

abstract class UseCase<Params, Results> {
  // Future<Results> handle(Params params);
  Future<Either<Failure, Results>> handle(Params params);
}
