import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fortune_client/data/datasource/remote/firebase/firebase_auth_data_source.dart';
import 'package:fortune_client/data/datasource/remote/firebase/firebase_auth_data_source_impl.dart';
import 'package:fortune_client/data/datasource/remote/go/profile/profile_data_source.dart';
import 'package:fortune_client/data/datasource/remote/go/profile/stub_profile_data_source.dart';
import 'package:fortune_client/data/datasource/remote/go/room/room_data_source.dart';
import 'package:fortune_client/data/datasource/remote/go/room/stub_room_data_source.dart';
import 'package:fortune_client/data/repository/auth/auth_repository.dart';
import 'package:fortune_client/data/repository/auth/auth_repository_impl.dart';
import 'package:fortune_client/data/repository/message/message_repository.dart';
import 'package:fortune_client/data/repository/message/message_repository_impl.dart';
import 'package:fortune_client/data/repository/profile/profile_repository.dart';
import 'package:fortune_client/data/repository/profile/profile_repository_impl.dart';
import 'package:fortune_client/data/repository/room/room_repository.dart';
import 'package:fortune_client/data/repository/room/room_repository_impl.dart';
import 'package:fortune_client/foundation/constants.dart';
import 'package:fortune_client/view/routes/app_router.gr.dart';
import 'package:fortune_client/view/routes/route_guard.dart';

/// Route
final appRouterProvider = Provider<AppRouter>((ref) {
  final authGuard = ref.watch(authGuardProvider);
  return AppRouter(authGuard: authGuard);
});

class Repository {
  static final authProvider = Provider<AuthRepository>((ref) {
    return AuthRepositoryImpl(ref.watch(DataSource.firebase));
  });
  static final messageProvider = Provider<MessageRepository>((ref) {
    return MessageRepositoryImpl();
  });
  static final profileProvider = Provider<ProfileRepository>((ref) {
    return ProfileRepositoryImpl(
      ref.watch(DataSource.profile),
    );
  });
  static final roomProvider = Provider<RoomRepository>((ref) {
    return RoomRepositoryImpl(ref.watch(DataSource.room));
  });
}

class DataSource {
  static final _dio = Provider<Dio>(
    (_) => Dio(BaseOptions(
      baseUrl: Constants.of().baseUrl,
      contentType: Headers.jsonContentType,
      responseType: ResponseType.json,
      validateStatus: (_) => true,
    )),
  );
  static final firebase = Provider<FirebaseAuthDataSource>((ref) {
    return FirebaseAuthDataSourceImpl();
  });

  static final room = Provider<RoomDataSource>((ref) {
    return RoomDataSource(ref.watch(_dio));
  });

  static final profile = Provider<ProfileDataSource>((ref) {
    return ProfileDataSource(ref.watch(_dio));
  });
}
