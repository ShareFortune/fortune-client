// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_user_form.freezed.dart';
part 'create_user_form.g.dart';

@freezed
class CreateUserForm with _$CreateUserForm {
  const factory CreateUserForm({
    @JsonKey(name: "firebaseId") required String firebaseId,
    @JsonKey(name: "username") required String username,
    @JsonKey(name: "birthday") required String birthday,
  }) = _CreateUserForm;

  factory CreateUserForm.fromJson(Map<String, dynamic> json) =>
      _$CreateUserFormFromJson(json);
}
