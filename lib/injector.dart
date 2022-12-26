import 'package:dio/dio.dart';
import 'package:fortune_client/data/datasource/core/append_token_interceptor.dart';
import 'package:fortune_client/data/datasource/remote/firebase/firebase_auth_data_source.dart';
import 'package:fortune_client/data/datasource/remote/firebase/firebase_auth_data_source_impl.dart';
import 'package:fortune_client/data/datasource/remote/go/profile/profile_data_source.dart';
import 'package:fortune_client/data/datasource/remote/go/rooms/rooms_data_source.dart';
import 'package:fortune_client/data/repository/auth/auth_repository.dart';
import 'package:fortune_client/data/repository/auth/auth_repository_impl.dart';
import 'package:fortune_client/data/repository/auth/fake_auth_repository.dart';
import 'package:fortune_client/data/repository/message/message_repository.dart';
import 'package:fortune_client/data/repository/message/message_repository_impl.dart';
import 'package:fortune_client/data/repository/profile/profile_repository.dart';
import 'package:fortune_client/data/repository/profile/profile_repository_impl.dart';
import 'package:fortune_client/data/repository/room/room_repository.dart';
import 'package:fortune_client/data/repository/room/room_repository_impl.dart';
import 'package:fortune_client/foundation/constants.dart';
import 'package:fortune_client/view/routes/app_router.gr.dart';
import 'package:fortune_client/view/routes/route_guard.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// ダミーログインAPI
final debugUseDummyLoginApiProvider = StateProvider((_) => false);

/// Route
final appRouterProvider = Provider<AppRouter>((ref) {
  final authGuard = ref.watch(authGuardProvider);
  final checkIfMyProfileExists = ref.watch(checkIfMyProfileExistsProvider);
  return AppRouter(
    authGuard: authGuard,
    checkIfMyProfileExists: checkIfMyProfileExists,
  );
});

class Repository {
  static final auth = Provider<AuthRepository>((ref) {
    return ref.watch(debugUseDummyLoginApiProvider)
        ? FakeAuthRepository()
        : AuthRepositoryImpl(ref.watch(DataSource.firebase));
  });
  static final messageProvider = Provider<MessageRepository>((ref) {
    return MessageRepositoryImpl();
  });
  static final profile = Provider<ProfileRepository>((ref) {
    return ProfileRepositoryImpl(ref.watch(DataSource.profile));
  });
  static final room = Provider<RoomRepository>((ref) {
    return RoomRepositoryImpl(ref.watch(DataSource.room));
  });
}

class DataSource {
  static final _dio = Provider<Dio>(
    (ref) => Dio(BaseOptions(
      baseUrl: Constants.of().baseUrl,
      contentType: Headers.jsonContentType,
      responseType: ResponseType.json,
      validateStatus: (_) => true,
    ))
      ..interceptors.add(AppendTokenInterceptor(ref.watch(Repository.auth))),
  );

  static final firebase = Provider<FirebaseAuthDataSource>((ref) {
    return FirebaseAuthDataSourceImpl();
  });

  static final room = Provider<RoomsDataSource>((ref) {
    return RoomsDataSource(ref.watch(_dio));
  });

  static final profile = Provider<ProfileDataSource>((ref) {
    return ProfileDataSource(ref.watch(_dio));
  });
}
