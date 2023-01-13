import 'package:fortune_client/data/repository/rooms/rooms_repository.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/util/logger/logger.dart';
import 'package:fortune_client/view/pages/rooms/participating_room_list/participating_room_list_state.dart';
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
    await fetchHost();
  }

  Future<void> fetchHost() async {
    final hostRooms = await AsyncValue.guard(() async {
      final result = await _roomRepository.fetchHost();
      return result.map((e) => HostRoomListItemState.fromEntity(e)).toList();
    });
    logger.i(hostRooms);
    print(hostRooms);
    state = state.copyWith(hostRooms: hostRooms);
  }

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
