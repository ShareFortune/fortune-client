import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_user_form.freezed.dart';
part 'create_user_form.g.dart';

@freezed
class CreateUserForm with _$CreateUserForm {
  const factory CreateUserForm({
    required String firebaseId,
    required String username,
    required String birthday,
  }) = _CreateUserForm;

  factory CreateUserForm.fromJson(Map<String, dynamic> json) =>
      _$CreateUserFormFromJson(json);
}
