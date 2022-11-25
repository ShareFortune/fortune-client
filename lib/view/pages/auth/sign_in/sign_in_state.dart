import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_state.freezed.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState({
    @Default(null) UserCredential? credential,
  }) = _SignInState;
}
