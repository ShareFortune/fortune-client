import 'package:dio/dio.dart';
import 'package:fortune_client/data/datasource/local/shared_pref_data_source.dart';
import 'package:fortune_client/data/datasource/local/shared_pref_data_source_impl.dart';
import 'package:fortune_client/data/datasource/remote/firebase/firebase_auth_data_source.dart';
import 'package:fortune_client/data/datasource/remote/firebase/firebase_auth_data_source_impl.dart';
import 'package:fortune_client/data/datasource/remote/go/message_rooms/fake_message_rooms_data_source.dart';
import 'package:fortune_client/data/datasource/remote/go/message_rooms/message_rooms_data_source.dart';
import 'package:fortune_client/data/datasource/remote/go/profile/fake_profile_data_source.dart';
import 'package:fortune_client/data/datasource/remote/go/profile/profile_data_source.dart';
import 'package:fortune_client/data/datasource/remote/go/rooms/fake_rooms_data_source.dart';
import 'package:fortune_client/data/datasource/remote/go/rooms/rooms_data_source.dart';
import 'package:fortune_client/data/repository/auth/auth_repository.dart';
import 'package:fortune_client/data/repository/auth/auth_repository_impl.dart';
import 'package:fortune_client/data/repository/debug/debug_repository.dart';
import 'package:fortune_client/data/repository/debug/debug_repository_impl.dart';
import 'package:fortune_client/data/repository/message/message_repository_impl.dart';
import 'package:fortune_client/data/repository/profile/profile_repository.dart';
import 'package:fortune_client/data/repository/profile/profile_repository_impl.dart';
import 'package:fortune_client/data/repository/room/room_repository.dart';
import 'package:fortune_client/data/repository/room/room_repository_impl.dart';
import 'package:fortune_client/foundation/constants.dart';
import 'package:fortune_client/view/routes/app_router.gr.dart';
import 'package:fortune_client/view/routes/route_guard.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

Future<void> initDependencies(bool isRelease) async {
  final sharedPreferences = await SharedPreferences.getInstance();
  final dio = Dio(BaseOptions(
    baseUrl: Constants.of().baseUrl,
    contentType: Headers.jsonContentType,
    responseType: ResponseType.json,
    validateStatus: (_) => true,
  ));

  ///  Router
  sl.registerLazySingleton(() => AuthGuard(sl()));
  sl.registerLazySingleton(() => CheckIfMyProfileExists(sl()));
  sl.registerLazySingleton(
    () => AppRouter(authGuard: sl(), checkIfMyProfileExists: sl()),
  );

  /// Repository
  sl.registerLazySingleton<AuthRepository>(
      () => AuthRepositoryImpl(sl(), sl()));
  sl.registerLazySingleton(() => MessageRepositoryImpl());
  sl.registerLazySingleton<ProfileRepository>(
      () => ProfileRepositoryImpl(sl(), sl()));
  sl.registerLazySingleton<RoomRepository>(() => RoomRepositoryImpl(sl()));
  sl.registerLazySingleton<DebugRepository>(() => DebugRepositoryImpl(sl()));

  /// DataSource
  sl.registerLazySingleton<SharedPreferencesDataSource>(
      () => SharedPreferencesDataSourceImpl(sharedPreferences));
  sl.registerLazySingleton<FirebaseAuthDataSource>(
      () => FirebaseAuthDataSourceImpl());
  sl.registerLazySingleton<RoomsDataSource>(() => FakeRoomDataSource());
  sl.registerLazySingleton<ProfileDataSource>(() => FakeProfileDataSource());
  sl.registerLazySingleton<MessageRoomsDataSource>(
      () => FakeMessageRoomsDataSource());
}
