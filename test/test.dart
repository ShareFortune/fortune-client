import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fortune_client/infra/datasources/go/user_data_source.dart';

void main() {
  test("", () async {
    final dataSource = UserDataSource(Dio());

    try {
      final result = await dataSource.create(
        "firebaseId",
        "username",
        "birthday",
      );
      print(result);
    } on DioError catch (e) {
      print("DioError");

      print(e.response!.statusCode);
      print(e.response!.statusMessage);
    } catch (e) {
      print("全対応");
      print(e);
    }
  });
}
