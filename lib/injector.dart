import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fortune_client/domain/interactors/auth/get_credentials.dart';
import 'package:fortune_client/domain/interactors/auth/login.dart';
import 'package:fortune_client/domain/interactors/profile/create.dart';
import 'package:fortune_client/domain/interactors/room/fetch_list.dart';
import 'package:fortune_client/domain/repositories/auth.dart';
import 'package:fortune_client/domain/repositories/profile.dart';
import 'package:fortune_client/domain/repositories/user_repository.dart';
import 'package:fortune_client/domain/usecases/auth/get_credentials.dart';
import 'package:fortune_client/domain/usecases/auth/login.dart';
import 'package:fortune_client/domain/usecases/profile/create.dart';
import 'package:fortune_client/domain/usecases/room/fetch_list.dart';
import 'package:fortune_client/infra/datasources/firebase/auth.dart';
import 'package:fortune_client/infra/datasources/go/user_data_source.dart';
import 'package:fortune_client/infra/repositories/auth.dart';
import 'package:fortune_client/infra/repositories/profile_repository.dart';
import 'package:fortune_client/infra/repositories/user_repository.dart';

/// Use cases
///
/// Auth
class UseCase {
  static final profileCreate = Provider<ProfileCreateUseCase>((ref) {
    return ProfileCreateInteractor(
      ref.watch(Repository.auth),
      ref.watch(Repository.profile),
    );
  });
}

final getCredentialsUseCaseProvider = Provider<GetCredentialsUseCase>((ref) {
  return GetCredentialsInteractor(ref.watch(Repository.auth));
});

final loginUseCaseProvider = Provider<LoginUseCase>(
  (ref) => LoginInteractor(ref.watch(Repository.auth)),
);

/// Room
final roomFetchAllUseCaseProvider = Provider<RoomFetchListUseCase>(
  (ref) => RoomFetchListInteractor(),
);

/// Data sources
class DataSources {
  static final firebase = Provider<FirebaseAuthDataSource>((ref) {
    return FirebaseAuthDataSourceImpl();
  });

  static final user = Provider<UserDataSource>((ref) {
    return UserDataSource(Dio());
  });
}

/// Repository
class Repository {
  static final auth = Provider<AuthRepository>((ref) {
    return AuthRepositoryImpl(
      ref.watch(DataSources.firebase),
    );
  });
  static final user = Provider<UserRepository>((ref) {
    return UserRepositoryImpl(
      ref.watch(DataSources.user),
    );
  });
  static final profile = Provider<ProfileRepository>((ref) {
    return ProfileRepositoryImpl();
  });
}
