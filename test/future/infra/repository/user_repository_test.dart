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

    final actual = await repository.create(
        firebaseId: "any", username: "any", birthday: "any");

    expect(actual, "aaaaaaaaa");
    verify(dataSource.create(any, any, any));
  });
}
