import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fortune_client/domain/interactors/auth/get_credentials.dart';
import 'package:fortune_client/domain/interactors/auth/login.dart';
import 'package:fortune_client/domain/interactors/room/fetch_list.dart';
import 'package:fortune_client/domain/repositories/auth.dart';
import 'package:fortune_client/domain/repositories/user_repository.dart';
import 'package:fortune_client/domain/usecases/auth/get_credentials.dart';
import 'package:fortune_client/domain/usecases/auth/login.dart';
import 'package:fortune_client/domain/usecases/room/fetch_list.dart';
import 'package:fortune_client/infra/datasources/firebase/auth.dart';
import 'package:fortune_client/infra/datasources/go/user_data_source.dart';
import 'package:fortune_client/infra/repositories/auth.dart';
import 'package:fortune_client/infra/repositories/user_repository.dart';

/// Use cases
///
/// Auth
final getCredentialsUseCaseProvider = Provider<GetCredentialsUseCase>((ref) {
  return GetCredentialsInteractor(ref.watch(authRepositoryProvider));
});

final loginUseCaseProvider = Provider<LoginUseCase>(
  (ref) => LoginInteractor(ref.watch(authRepositoryProvider)),
);

/// Room
final roomFetchAllUseCaseProvider = Provider<RoomFetchListUseCase>(
  (ref) => RoomFetchListInteractor(),
);

/// Repository
final authRepositoryProvider = Provider<AuthRepository>(
  (ref) => AuthRepositoryImpl(
    ref.watch(firebaseAuthDataSourceProvider),
  ),
);

/// Data sources
class DataSources {
  static final user = Provider<UserDataSource>((ref) {
    return UserDataSource(Dio());
  });
}

final firebaseAuthDataSourceProvider = Provider<FirebaseAuthDataSource>(
  (_) => FirebaseAuthDataSourceImpl(),
);

class Repository {
  static final user = Provider<UserRepository>((ref) {
    return UserRepositoryImpl(
      ref.watch(DataSources.user),
    );
  });
}
