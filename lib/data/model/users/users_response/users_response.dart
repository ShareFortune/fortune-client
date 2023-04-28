import 'package:freezed_annotation/freezed_annotation.dart';

part 'users_response.freezed.dart';
part 'users_response.g.dart';

@freezed
class UsersIdResponse with _$UsersIdResponse {
  const factory UsersIdResponse({
    required String id,
  }) = _UsersIdResponse;

  factory UsersIdResponse.fromJson(Map<String, dynamic> json) =>
      _$UsersIdResponseFromJson(json);
}
