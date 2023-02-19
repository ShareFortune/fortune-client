import 'package:fortune_client/data/repository/addresses/addresses_repository.dart';
import 'package:fortune_client/data/repository/auth/auth_repository.dart';
import 'package:fortune_client/data/repository/debug/debug_repository.dart';
import 'package:fortune_client/data/repository/favorites/favorites_repository.dart';
import 'package:fortune_client/data/repository/join_requests/join_requests_repository.dart';
import 'package:fortune_client/data/repository/message/message_repository.dart';
import 'package:fortune_client/data/repository/message_rooms/message_rooms_repository.dart';
import 'package:fortune_client/data/repository/profile/profile_repository.dart';
import 'package:fortune_client/data/repository/rooms/rooms_repository.dart';
import 'package:fortune_client/data/repository/tags/tags_repository.dart';
import 'package:fortune_client/data/repository/users/users_repository.dart';
import 'package:fortune_client/injector.dart';

class Repository {
  static DebugRepository get debug => getIt();
  static AuthRepository get auth => getIt();
  static UsersRepository get users => getIt();
  static MessagesRepository get messages => getIt();
  static MessageRoomsRepository get messageRooms => getIt();
  static ProfileRepository get profile => getIt();
  static RoomsRepository get rooms => getIt();
  static TagsRepository get tags => getIt();
  static JoinRequestsRepository get joinRequests => getIt();
  static AddressesRepository get addresses => getIt();
  static FavoritesRepository get favorites => getIt();
}
