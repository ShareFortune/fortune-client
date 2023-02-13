import 'package:fortune_client/data/repository/addresses/addresses_repository.dart';
import 'package:fortune_client/data/repository/auth/auth_repository.dart';
import 'package:fortune_client/data/repository/debug/debug_repository.dart';
import 'package:fortune_client/data/repository/favorites/favorites_repository.dart';
import 'package:fortune_client/data/repository/join_requests/join_requests_repository.dart';
import 'package:fortune_client/data/repository/message/message_repository.dart';
import 'package:fortune_client/data/repository/profile/profile_repository.dart';
import 'package:fortune_client/data/repository/rooms/rooms_repository.dart';
import 'package:fortune_client/data/repository/tags/tags_repository.dart';
import 'package:fortune_client/data/repository/users/users_repository.dart';

class Repository {
  final DebugRepository debug;
  final AuthRepository auth;
  final UsersRepository users;
  final MessagesRepository messages;
  final ProfileRepository profile;
  final RoomsRepository rooms;
  final TagsRepository tags;
  final JoinRequestsRepository joinRequests;
  final AddressesRepository addresses;
  final FavoritesRepository favorites;

  Repository({
    required this.debug,
    required this.auth,
    required this.users,
    required this.messages,
    required this.profile,
    required this.rooms,
    required this.tags,
    required this.joinRequests,
    required this.addresses,
    required this.favorites,
  });
}
