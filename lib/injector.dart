import 'package:dio/dio.dart';
import 'package:fortune_client/data/datasource/local/shared_pref_data_source.dart';
import 'package:fortune_client/data/datasource/local/shared_pref_data_source_impl.dart';
import 'package:fortune_client/data/datasource/remote/firebase/firebase_auth_data_source.dart';
import 'package:fortune_client/data/datasource/remote/firebase/firebase_auth_data_source_impl.dart';
import 'package:fortune_client/data/datasource/remote/go/profile/profile_data_source.dart';
import 'package:fortune_client/data/datasource/remote/go/rooms/rooms_data_source.dart';
import 'package:fortune_client/data/repository/auth/auth_repository.dart';
import 'package:fortune_client/data/repository/auth/auth_repository_impl.dart';
import 'package:fortune_client/data/repository/debug/debug_repository.dart';
import 'package:fortune_client/data/repository/debug/debug_repository_impl.dart';
import 'package:fortune_client/data/repository/message/message_repository_impl.dart';
import 'package:fortune_client/data/repository/profile/profile_repository.dart';
import 'package:fortune_client/data/repository/profile/profile_repository_impl.dart';
import 'package:fortune_client/data/repository/room/room_repository_impl.dart';
import 'package:fortune_client/foundation/constants.dart';
import 'package:fortune_client/view/routes/app_router.gr.dart';
import 'package:fortune_client/view/routes/route_guard.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

Future<void> initDependencies() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  final dio = Dio(BaseOptions(
    baseUrl: Constants.of().baseUrl,
    contentType: Headers.jsonContentType,
    responseType: ResponseType.json,
    validateStatus: (_) => true,
  ));

  /// DataSource
  sl.registerSingleton<SharedPrefDataSource>(
      SharedPrefDataSourceImpl(sharedPreferences));
  sl.registerSingleton<FirebaseAuthDataSource>(FirebaseAuthDataSourceImpl());
  sl.registerSingleton(RoomsDataSource(dio));
  sl.registerSingleton(ProfileDataSource(dio));

  /// Repository
  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl(sl()));
  sl.registerSingleton(MessageRepositoryImpl());
  sl.registerSingleton<ProfileRepository>(ProfileRepositoryImpl(sl(), sl()));
  sl.registerSingleton(RoomRepositoryImpl(sl()));
  sl.registerSingleton<DebugRepository>(DebugRepositoryImpl(sl()));

  ///  Router
  sl.registerSingleton(AuthGuard(sl()));
  sl.registerSingleton(CheckIfMyProfileExists(sl()));
  sl.registerSingleton(
    AppRouter(authGuard: sl(), checkIfMyProfileExists: sl()),
  );
}

// Future<void> initDependencies() async {
//   final sharedPreferences = await SharedPreferences.getInstance();
//   final dio = Dio(BaseOptions(
//     baseUrl: Constants.of().baseUrl,
//     contentType: Headers.jsonContentType,
//     responseType: ResponseType.json,
//     validateStatus: (_) => true,
//   ));

//   /// DataSource
//   sl.registerLazySingleton(() => SharedPrefDataSourceImpl(sharedPreferences));
//   // sl.registerLazySingleton<FirebaseAuthDataSource>(
//   //     () => FirebaseAuthDataSourceImpl());
//   sl.registerSingleton(FirebaseAuthDataSourceImpl());
//   sl.registerSingleton(RoomsDataSource(dio));
//   // sl.registerLazySingleton(() => RoomsDataSource(dio));
//   sl.registerLazySingleton(() => ProfileDataSource(dio));

//   /// Repository
//   sl.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(sl()));
//   sl.registerLazySingleton(() => MessageRepositoryImpl());
//   sl.registerLazySingleton(() => ProfileRepositoryImpl(sl(), sl()));
//   sl.registerLazySingleton(() => RoomRepositoryImpl(sl()));

//   ///  Router
//   sl.registerLazySingleton(() => AuthGuard(sl()));
//   sl.registerLazySingleton(() => CheckIfMyProfileExists(sl()));
//   sl.registerLazySingleton(
//     () => AppRouter(authGuard: sl(), checkIfMyProfileExists: sl()),
//   );
// }
