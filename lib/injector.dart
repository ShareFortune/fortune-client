import 'package:dio/dio.dart';
import 'package:fortune_client/data/datasource/core/append_token_interceptor.dart';
import 'package:fortune_client/data/datasource/local/shared_pref_data_source.dart';
import 'package:fortune_client/data/datasource/local/shared_pref_data_source_impl.dart';
import 'package:fortune_client/data/datasource/remote/firebase/firebase_auth_data_source.dart';
import 'package:fortune_client/data/datasource/remote/firebase/firebase_auth_data_source_impl.dart';
import 'package:fortune_client/data/datasource/remote/go/addresses/addresses_data_source.dart';
import 'package:fortune_client/data/datasource/remote/go/favorites/favorites_data_source.dart';
import 'package:fortune_client/data/datasource/remote/go/join_requests/join_requests_data_source.dart';
import 'package:fortune_client/data/datasource/remote/go/message_rooms/message_rooms_data_source.dart';
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
import 'package:fortune_client/foundation/constants.dart';
import 'package:fortune_client/view/routes/app_router.gr.dart';
import 'package:fortune_client/view/routes/route_guard.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

final sl = GetIt.instance;

Future<void> initDependencies(bool isRelease) async {
  /// SharedPreferences
  sl.registerSingletonAsync<SharedPreferences>(
      () => SharedPreferences.getInstance());

  /// Dio
  sl.registerLazySingleton<Dio>(
    () => Dio(
      BaseOptions(
          baseUrl: Constants.of().baseUrl,
          contentType: Headers.jsonContentType,
          responseType: ResponseType.json,
          connectTimeout: 30 * 1000, // 30 seconds
          receiveTimeout: 30 * 1000 // 30 seconds
          ),
    )..interceptors.addAll([
        AppendTokenInterceptor(sl()),
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: true,
          error: true,
          compact: true,
          maxWidth: 90,
        ),
      ]),
  );

  /// Router
  sl.registerLazySingleton<AuthGuard>(
    () => AuthGuard(sl()),
  );
  sl.registerLazySingleton<CheckIfMyProfileExists>(
    () => CheckIfMyProfileExists(sl()),
  );
  sl.registerLazySingleton<AppRouter>(
    () => AppRouter(authGuard: sl(), checkIfMyProfileExists: sl()),
  );

  /// Repository
  sl.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(sl()),
  );
  sl.registerLazySingleton<UsersRepository>(
    () => UsersRepositoryImpl(sl(), sl(), sl()),
  );
  sl.registerLazySingleton<MessageRepository>(
    () => MessageRepositoryImpl(sl()),
  );
  sl.registerLazySingleton<ProfileRepository>(
    () => ProfileRepositoryImpl(sl(), sl()),
  );
  sl.registerLazySingleton<RoomsRepository>(
    () => RoomsRepositoryImpl(sl()),
  );
  sl.registerLazySingleton<DebugRepository>(
    () => DebugRepositoryImpl(sl()),
  );
  sl.registerLazySingleton<TagsRepository>(
    () => TagsRepositoryImpl(sl()),
  );
  sl.registerLazySingleton<JoinRequestsRepository>(
    () => JoinRequestsRepositoryImpl(sl()),
  );
  sl.registerLazySingleton<AddressesRepository>(
    () => AddressesRepositoryImpl(sl()),
  );
  sl.registerLazySingleton<FavoritesRepository>(
    () => FavoritesRepositoryImpl(sl()),
  );

  /// DataSource
  sl.registerLazySingleton<SharedPreferencesDataSource>(
    () => SharedPreferencesDataSourceImpl(sl()),
  );
  sl.registerLazySingleton<FirebaseAuthDataSource>(
    () => FirebaseAuthDataSourceImpl(),
  );
  sl.registerLazySingleton<UsersDataSource>(
    () => UsersDataSource(sl()),
  );
  sl.registerLazySingleton<RoomsDataSource>(
    // () => RoomsDataSource(sl()),
    () => FakeRoomDataSource(),
  );
  sl.registerLazySingleton<ProfileDataSource>(
    () => ProfileDataSource(sl()),
  );
  sl.registerLazySingleton<MessageRoomsDataSource>(
    () => MessageRoomsDataSource(sl()),
  );
  sl.registerLazySingleton<TagsDataSource>(
    () => TagsDataSource(sl()),
  );
  sl.registerLazySingleton<JoinRequestsDataSource>(
    () => JoinRequestsDataSource(sl()),
  );
  sl.registerLazySingleton<AddressesDataSource>(
    () => AddressesDataSource(sl()),
  );
  sl.registerLazySingleton<FavoritesDataSource>(
    () => FavoritesDataSource(sl()),
  );

  return await sl.allReady();
}
