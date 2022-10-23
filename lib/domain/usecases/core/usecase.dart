abstract class UseCase<Params, Results> {
  Future<Results> handle(Params params);
}
