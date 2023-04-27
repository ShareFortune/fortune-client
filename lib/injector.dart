import 'package:dio/dio.dart';
import 'package:fortune_client/data/datasource/core/dio_client.dart';
import 'package:fortune_client/data/datasource/local/shared_pref_data_source.dart';
import 'package:fortune_client/data/datasource/local/shared_pref_data_source_impl.dart';
import 'package:fortune_client/data/datasource/remote/firebase/apple_sign_in_data_source.dart';
import 'package:fortune_client/data/datasource/remote/firebase/facebook_sign_in_data_source.dart';
import 'package:fortune_client/data/datasource/remote/firebase/firebase_auth_data_source.dart';
import 'package:fortune_client/data/datasource/remote/firebase/firebase_auth_data_source_impl.dart';
import 'package:fortune_client/data/datasource/remote/firebase/google_sign_in_data_source.dart';
import 'package:fortune_client/data/datasource/remote/go/addresses/addresses_data_source.dart';
import 'package:fortune_client/data/datasource/remote/go/addresses/fake_addresses_data_source.dart';
import 'package:fortune_client/data/datasource/remote/go/favorites/fake_favorites_data_source.dart';
import 'package:fortune_client/data/datasource/remote/go/favorites/favorites_data_source.dart';
import 'package:fortune_client/data/datasource/remote/go/join_requests/fake_join_requests_data_source.dart';
import 'package:fortune_client/data/datasource/remote/go/join_requests/join_requests_data_source.dart';
import 'package:fortune_client/data/datasource/remote/go/message_images/fake_message_images_data_source.dart';
import 'package:fortune_client/data/datasource/remote/go/message_images/message_images_data_source.dart';
import 'package:fortune_client/data/datasource/remote/go/message_rooms/fake_message_rooms_data_source.dart';
import 'package:fortune_client/data/datasource/remote/go/message_rooms/message_rooms_data_source.dart';
import 'package:fortune_client/data/datasource/remote/go/messages/fake_messages_data_source.dart';
import 'package:fortune_client/data/datasource/remote/go/messages/messages_data_source.dart';
import 'package:fortune_client/data/datasource/remote/go/profile/fake_profile_data_source.dart';
import 'package:fortune_client/data/datasource/remote/go/profile/profile_data_source.dart';
import 'package:fortune_client/data/datasource/remote/go/rooms/fake_rooms_data_source.dart';
import 'package:fortune_client/data/datasource/remote/go/rooms/rooms_data_source.dart';
import 'package:fortune_client/data/datasource/remote/go/tags/tags_data_source.dart';
import 'package:fortune_client/data/datasource/remote/go/users/users_data_source.dart';

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
import 'package:fortune_client/data/repository/message_rooms/message_rooms_repository.dart';
import 'package:fortune_client/data/repository/message_rooms/message_rooms_repository_impl.dart';
import 'package:fortune_client/data/repository/profile/profile_repository.dart';
import 'package:fortune_client/data/repository/profile/profile_repository_impl.dart';
import 'package:fortune_client/data/repository/rooms/rooms_repository.dart';
import 'package:fortune_client/data/repository/rooms/rooms_repository_impl.dart';
import 'package:fortune_client/data/repository/tags/tags_repository.dart';
import 'package:fortune_client/data/repository/tags/tags_repository_impl.dart';
import 'package:fortune_client/data/repository/users/users_repository.dart';
import 'package:fortune_client/data/repository/users/users_repository_impl.dart';
import 'package:fortune_client/view/routes/route_navigator.dart';
import 'package:fortune_client/view/routes/route_guard.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'data/datasource/remote/go/tags/fake_tags_data_source.dart';

final getIt = GetIt.instance;

Future<void> initDependencies({bool testMode = false}) async {
  /// SharedPreferences
  final sharedPreferences = await SharedPreferences.getInstance();

  /// Dio
  getIt.registerSingleton<Dio>(DioClient.client);

  /// Router
  getIt.registerLazySingleton<RouteNavigator>(() => RouteNavigator());

  /// Repository
  getIt.registerLazySingleton<DebugRepository>(
    () => DebugRepositoryImpl(getIt()),
  );
  getIt.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(getIt(), getIt(), getIt(), getIt(), getIt()),
  );
  getIt.registerLazySingleton<UsersRepository>(
    () => UsersRepositoryImpl(getIt(), getIt()),
  );
  getIt.registerLazySingleton<MessagesRepository>(
    () => MessagesRepositoryImpl(getIt(), getIt()),
  );
  getIt.registerLazySingleton<MessageRoomsRepository>(
    () => MessageRoomsRepositoryImpl(getIt()),
  );
  getIt.registerLazySingleton<ProfileRepository>(
    () => ProfileRepositoryImpl(getIt(), getIt()),
  );
  getIt.registerLazySingleton<RoomsRepository>(
    () => RoomsRepositoryImpl(getIt()),
  );
  getIt.registerLazySingleton<TagsRepository>(
    () => TagsRepositoryImpl(getIt()),
  );
  getIt.registerLazySingleton<JoinRequestsRepository>(
    () => JoinRequestsRepositoryImpl(getIt()),
  );

  getIt.registerLazySingleton<FavoritesRepository>(
    () => FavoritesRepositoryImpl(getIt()),
  );

  /// DataSource
  getIt.registerLazySingleton<SharedPreferencesDataSource>(
    () => SharedPreferencesDataSourceImpl(sharedPreferences),
  );
  getIt.registerLazySingleton<FirebaseAuthDataSource>(
    () => FirebaseAuthDataSourceImpl(),
  );
  getIt.registerLazySingleton<FacebookSignInDataSource>(
    () => FacebookSignInDataSource(),
  );
  getIt.registerLazySingleton<AppleSignInDataSource>(
    () => AppleSignInDataSource(),
  );
  getIt.registerLazySingleton<GoogleSignInDataSource>(
    () => GoogleSignInDataSource(),
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
  getIt.registerLazySingleton<MessagesDataSource>(
    () => MessagesDataSource(getIt()),
  );
  getIt.registerLazySingleton<MessageImagesDataSource>(
    () => MessageImagesDataSource(getIt()),
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

  /// Fake DataSource
  if (testMode) {
    getIt.pushNewScope();

    getIt.registerSingleton<RoomsDataSource>(
      FakeRoomsDataSource(),
    );
    getIt.registerSingleton<ProfileDataSource>(
      FakeProfileDataSource(),
    );
    getIt.registerSingleton<MessagesDataSource>(
      FakeMessagesDataSource(),
    );
    getIt.registerSingleton<MessageImagesDataSource>(
      FakeMessageImagesDataSource(),
    );
    getIt.registerSingleton<MessageRoomsDataSource>(
      FakeMessageRoomsDataSource(),
    );
    getIt.registerSingleton<TagsDataSource>(
      FakeTagsDataSource(),
    );
    getIt.registerSingleton<JoinRequestsDataSource>(
      FakeJoinRequestsDataSource(),
    );
    getIt.registerSingleton<AddressesDataSource>(
      FakeAddressesDataSource(),
    );
    getIt.registerSingleton<FavoritesDataSource>(
      FakeFavoritesDataSource(),
    );
  }

  return await getIt.allReady();
}
