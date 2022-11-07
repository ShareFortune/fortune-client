import 'package:fortune_client/domain/repositories/auth.dart';
import 'package:fortune_client/domain/usecases/auth/get_credentials.dart';
import 'package:fortune_client/domain/usecases/core/usecases/usecase.dart';

class GetCredentialsInteractor implements GetCredentialsUseCase {
  final AuthRepository repository;

  GetCredentialsInteractor(this.repository);

  @override
  Future<GetCredentialsResult> handle(NoParams params) async {
    final result = await repository.getCredentials();
    return GetCredentialsResult(result);
  }
}
