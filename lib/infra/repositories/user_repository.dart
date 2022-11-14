import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fortune_client/domain/repositories/user_repository.dart';
import 'package:fortune_client/infra/datasources/go/user_data_source.dart';
import 'package:fortune_client/infra/models/create_user_model.dart';

class UserRepositoryImpl implements UserRepository {
  final UserDataSource _dataSource;

  UserRepositoryImpl(this._dataSource);
  @override
  Future<String> create({
    required String firebaseId,
    required String username,
    required String birthday,
  }) async {
    try {
      final result = await _dataSource.create(firebaseId, username, birthday);
      return CreateUserModel.fromJson(json.decode(result)).id;
    } on DioError {
      rethrow;
      // switch (e.type) {
      //   case DioErrorType.response:
      //     throw ErrorResponseException(
      //       code: e.response?.statusCode,
      //       message: e.response?.statusMessage,
      //     );
      //   default:
      //     rethrow;
      // }
    }
  }
}