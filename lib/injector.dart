import 'package:dio/dio.dart';
import 'package:fortune_client/data/datasource/core/dio_client.dart';
import 'package:fortune_client/data/datasource/local/shared_pref_data_source.dart';
import 'package:fortune_client/data/datasource/local/shared_pref_data_source_impl.dart';
import 'package:fortune_client/data/datasource/remote/firebase/authentication_interface.dart';
import 'package:fortune_client/data/datasource/remote/firebase/firebase_auth_data_source_impl.dart';
import 'package:fortune_client/data/datasource/remote/go/addresses/addresses_data_source.dart';
import 'package:fortune_client/data/datasource/remote/go/addresses/fake_addresses_data_source.dart';
import 'package:fortune_client/data/datasource/remote/go/favorites/fake_favorites_data_source.dart';
import 'package:fortune_client/data/datasource/remote/go/favorites/favorites_data_source.dart';
import 'package:fortune_client/data/datasource/remote/go/join_requests/fake_join_requests_data_source.dart';
import 'package:fortune_client/data/datasource/remote/go/join_requests/join_requests_data_source.dart';
import 'package:fortune_client/data/datasource/remote/go/message_rooms/fake_message_rooms_data_source.dart';
import 'package:fortune_client/data/datasource/remote/go/message_rooms/message_rooms_data_source.dart';
import 'package:fortune_client/data/datasource/remote/go/profile/fake_profile_data_source.dart';
import 'package:fortune_client/data/datasource/remote/go/profile/profile_data_source.dart';
import 'package:fortune_client/data/datasource/remote/go/rooms/fake_rooms_data_source.dart';
import 'package:fortune_client/data/datasource/remote/go/rooms/rooms_data_source.dart';
import 'package:fortune_client/data/datasource/remote/go/tags/tags_data_source.dart';
import 'package:fortune_client/data/datasource/remote/go/users/users_data_source.dart';
import 'package:fortune_client/data/repository/addresses/addresses_repository.dart';
import 'package:fortune_client/data/repository/addresses/addresses_repository_impl.dart';
import 'package:fortune_client/data/repository/auth/auth_repository.dart';
import 'package:fortune_client/data/repository/auth/auth_repository_impl.dart';
import 'package:fortune_client/data/repository/debug/debug_repository.dart';
import 'package:fortune_client/data/repository/debug/debug_repository_impl.dart';
import 'package:fortune_client/data/repository/favorites/favorites_repository.dart';
import 'package:fortune_client/data/repository/favorites/favorites_repository_impl.dart';
import 'package:fortune_client/data/repository/join_requests/join_requests_repository.dart';
import 'package:fortune_client/data/repository/join_requests/join_requests_repository_impl.dart';
import 'package:fortune_client/data/repository/message/message_repository.dart';
import 'package:fortune_client/data/repository/message/message_repository_impl.dart';
import 'package:fortune_client/data/repository/profile/profile_repository.dart';
import 'package:fortune_client/data/repository/profile/profile_repository_impl.dart';
import 'package:fortune_client/data/repository/rooms/rooms_repository.dart';
import 'package:fortune_client/data/repository/rooms/rooms_repository_impl.dart';
import 'package:fortune_client/data/repository/tags/tags_repository.dart';
import 'package:fortune_client/data/repository/tags/tags_repository_impl.dart';
import 'package:fortune_client/data/repository/users/users_repository.dart';
import 'package:fortune_client/data/repository/users/users_repository_impl.dart';
import 'package:fortune_client/view/routes/app_router.gr.dart';
import 'package:fortune_client/view/routes/route_guard.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'data/datasource/remote/go/tags/fake_tags_data_source.dart';

final getIt = GetIt.instance;

Future<void> initDependencies({bool testMode = false}) async {
  ///
  /// SharedPreferences
  ///
  getIt.registerSingletonAsync<SharedPreferences>(
    () => SharedPreferences.getInstance(),
  );

  ///
  /// Dio
  ///
  getIt.registerLazySingleton<Dio>(
    () => Dio(DioClient.baseOptions)
      ..interceptors.addAll(
        DioClient.interceptors,
      ),
  );

  ///
  /// Router
  ///
  getIt.registerLazySingleton<AuthGuard>(
    () => AuthGuard(getIt()),
  );
  getIt.registerLazySingleton<CheckIfMyProfileExists>(
    () => CheckIfMyProfileExists(getIt()),
  );
  getIt.registerLazySingleton<AppRouter>(
    () => AppRouter(authGuard: getIt(), checkIfMyProfileExists: getIt()),
  );

  ///
  /// Repository
  ///
  getIt.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(getIt()),
  );
  getIt.registerLazySingleton<UsersRepository>(
    () => UsersRepositoryImpl(getIt(), getIt(), getIt()),
  );
  getIt.registerLazySingleton<MessageRepository>(
    () => MessageRepositoryImpl(getIt()),
  );
  getIt.registerLazySingleton<ProfileRepository>(
    () => ProfileRepositoryImpl(getIt(), getIt()),
  );
  getIt.registerLazySingleton<RoomsRepository>(
    () => RoomsRepositoryImpl(getIt()),
  );
  getIt.registerLazySingleton<DebugRepository>(
    () => DebugRepositoryImpl(getIt()),
  );
  getIt.registerLazySingleton<TagsRepository>(
    () => TagsRepositoryImpl(getIt()),
  );
  getIt.registerLazySingleton<JoinRequestsRepository>(
    () => JoinRequestsRepositoryImpl(getIt()),
  );
  getIt.registerLazySingleton<AddressesRepository>(
    () => AddressesRepositoryImpl(getIt()),
  );
  getIt.registerLazySingleton<FavoritesRepository>(
    () => FavoritesRepositoryImpl(getIt()),
  );

  ///
  /// DataSource
  ///
  getIt.registerLazySingleton<SharedPreferencesDataSource>(
    () => SharedPreferencesDataSourceImpl(getIt()),
  );
  getIt.registerLazySingleton<FirebaseAuthDataSource>(
    () => FirebaseAuthDataSourceImpl(),
  );
  getIt.registerLazySingleton<UsersDataSource>(
    () => UsersDataSource(getIt()),
  );
  getIt.registerLazySingleton<RoomsDataSource>(
    () => RoomsDataSource(getIt()),
  );
  getIt.registerLazySingleton<ProfileDataSource>(
    () => ProfileDataSource(getIt()),
  );
  getIt.registerLazySingleton<MessageRoomsDataSource>(
    () => MessageRoomsDataSource(getIt()),
  );
  getIt.registerLazySingleton<TagsDataSource>(
    () => TagsDataSource(getIt()),
  );
  getIt.registerLazySingleton<JoinRequestsDataSource>(
    () => JoinRequestsDataSource(getIt()),
  );
  getIt.registerLazySingleton<AddressesDataSource>(
    () => AddressesDataSource(getIt()),
  );
  getIt.registerLazySingleton<FavoritesDataSource>(
    () => FavoritesDataSource(getIt()),
  );

  if (testMode) {
    getIt.pushNewScope();

    getIt.registerLazySingleton<RoomsDataSource>(
      () => FakeRoomsDataSource(),
    );
    getIt.registerLazySingleton<ProfileDataSource>(
      () => FakeProfileDataSource(),
    );
    getIt.registerLazySingleton<MessageRoomsDataSource>(
      () => FakeMessageRoomsDataSource(),
    );
    getIt.registerLazySingleton<TagsDataSource>(
      () => FakeTagsDataSource(),
    );
    getIt.registerLazySingleton<JoinRequestsDataSource>(
      () => FakeJoinRequestsDataSource(),
    );
    getIt.registerLazySingleton<AddressesDataSource>(
      () => FakeAddressesDataSource(),
    );
    getIt.registerLazySingleton<FavoritesDataSource>(
      () => FakeFavoritesDataSource(),
    );
  }

  return await getIt.allReady();
}
