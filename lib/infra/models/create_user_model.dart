import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_user_model.freezed.dart';
part 'create_user_model.g.dart';

@freezed
class CreateUserModel with _$CreateUserModel {
  const factory CreateUserModel({
    required String id,
  }) = _CreateUserModel;

  factory CreateUserModel.fromJson(Map<String, dynamic> json) =>
      _$CreateUserModelFromJson(json);
}
