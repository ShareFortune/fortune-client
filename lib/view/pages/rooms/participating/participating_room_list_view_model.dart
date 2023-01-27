import 'package:fortune_client/data/model/participant/host/participant_room_as_host.dart';
import 'package:fortune_client/data/repository/rooms/rooms_repository.dart';
import 'package:fortune_client/injector.dart';
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
      return await _roomRepository.getRoomsToParticipateAsHost();
    });
    state = state.copyWith(host: hostRooms);
  }

  Future<void> fetchGuestRooms() async {
    final guestRooms = await AsyncValue.guard(() async {
      return await _roomRepository.getRoomsToParticipateAsGuest();
    });
    state = state.copyWith(guest: guestRooms);
  }

  void showAllRooms() {}
  void showRequestingRooms() {}

  ///
  /// 遷移処理
  ///
  Future<void> navigateToRequestConfirmation(String roomId) async {
    await sl<AppRouter>().push(JoinRequestsConfirmationRoute(id: roomId));
  }

  Future<void> navigateToMessage() async {
    await sl<AppRouter>().push(MessageRoomRoute(id: "id"));
  }

  Future<void> navigateToRoomDetail(String roomId) async {
    await sl<AppRouter>().push(RoomDetailRoute(roomId: roomId));
  }

  Future<void> navigateToRoomCreation() async {
    await sl<AppRouter>().push(CreateRoomRoute());
  }

  Future<void> navigateToRoomActionsAsHost(ParticipantRoomAsHost room) async {
    sl<AppRouter>().push(
      BottomSheetRouter(children: [RoomActions(room: room)]),
    );
  }
}
