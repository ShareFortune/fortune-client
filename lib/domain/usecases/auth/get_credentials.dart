import 'package:fortune_client/domain/usecases/core/usecases/usecase.dart';

abstract class GetCredentialsUseCase
    implements UseCase<GetCredentialsResult, NoParams> {}

class GetCredentialsResult {
  final bool isSignIn;

  GetCredentialsResult(this.isSignIn);
}
