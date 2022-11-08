import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fortune_client/domain/repositories/user_repository.dart';
import 'package:fortune_client/infra/datasources/go/user_data_source.dart';
import 'package:fortune_client/injector.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../fixture.dart';
import 'user_repository_test.mocks.dart';

@GenerateMocks([UserDataSource])
void main() {
  /// テスト対象
  late final UserRepository repository;
  late final MockUserDataSource dataSource;

  setUp(() {
    dataSource = MockUserDataSource();
    final container = ProviderContainer(
      overrides: [DataSources.user.overrideWithValue(dataSource)],
    );
    repository = container.read(Repository.user);
  });

  test("ユーザー作成が成功したらユーザIDを返す", () async {
    final mockResponse = fixture('create_user.json');
    when(dataSource.create(any, any, any))
        .thenAnswer((_) => Future.value(mockResponse));

    final actual =
        await repository.create(firebaseId: "", username: "", birthday: "");

    expect(actual, "aaaaaaaaa");
    verify(dataSource.create(any, any, any));
  });

  // group("ユーザー作成が失敗したら対応したエラーを返す", () {
  //   test("Invalid Expression", () async {
  //     final errorJson = fixture("error/invalid_expression.json");

  //     final exception = ErrorResponseException(
  //       code: 400,
  //       body: json.decode(errorJson),
  //     );

  //     when(dataSource.create(any, any, any)).thenThrow(exception);
  //     expect(
  //       () => repository.create(firebaseId: "", username: "", birthday: ""),
  //       throwsA(predicate((e) {
  //         return e is ErrorResponseException && e.message == "invalid request";
  //       })),
  //     );
  //     verify(dataSource.create(any, any, any));
  //   });
  // });
}
