import 'package:fortune_client/domain/usecases/auth/login.dart';
import 'package:fortune_client/domain/usecases/core/usecases/usecase.dart';

class AuthPresenter {
  final LoginUseCase _usecase;
  AuthPresenter(this._usecase);

  login() async {
    await _usecase.handle(NoParams());
  }
}
