import 'package:fortune_client/data/repository/rooms/rooms_repository.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/util/logger/logger.dart';
import 'package:fortune_client/view/pages/rooms/participating/participating_room_list_state.dart';
import 'package:fortune_client/view/routes/app_router.gr.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final participatingRoomListViewModelProvider = StateNotifierProvider<
        ParticipatingRoomListViewModel, ParticipatingRoomListState>(
    (ref) => ParticipatingRoomListViewModel(sl())..initialize());

class ParticipatingRoomListViewModel
    extends StateNotifier<ParticipatingRoomListState> {
  ParticipatingRoomListViewModel(this._roomRepository)
      : super(const ParticipatingRoomListState());

  final RoomsRepository _roomRepository;

  Future<void> initialize() async {
    await fetchHostRooms();
    await fetchGuestRooms();
  }

  Future<void> fetchHostRooms() async {
    final hostRooms = await AsyncValue.guard(() async {
      final result = await _roomRepository.getRoomsToParticipateAsHost();
      return result
          .map((e) => ParticipatingRoomListStateItem.fromHost(e))
          .toList();
    });
    logger.i(hostRooms);
    state = state.copyWith(host: hostRooms);
  }

  Future<void> fetchGuestRooms() async {
    final guestRooms = await AsyncValue.guard(() async {
      final result = await _roomRepository.getRoomsToParticipateAsGuest();
      return result
          .map((e) => ParticipatingRoomListStateItem.fromGuest(e))
          .toList();
    });
    logger.i(guestRooms);
    state = state.copyWith(guest: guestRooms);
  }

  void showAllRooms() {}
  void showRequestingRooms() {}

  ///
  /// 遷移処理
  ///
  Future<void> navigateToRequestConfirmation(int id) async {
    await sl<AppRouter>().push(
      RequestConfirmationRoute(id: 0),
      onFailure: (failure) {
        logger.e(failure.toString());
      },
    );
  }

  Future<void> navigateToMessage() async {
    await sl<AppRouter>().push(
      MessageRoomRoute(id: "id"),
      onFailure: (failure) {
        logger.e(failure.toString());
      },
    );
  }

  Future<void> navigateToRoomDetail() async {
    await sl<AppRouter>().push(
      RoomDetailRoute(id: "id"),
      onFailure: (failure) {
        logger.e(failure.toString());
      },
    );
  }
}
