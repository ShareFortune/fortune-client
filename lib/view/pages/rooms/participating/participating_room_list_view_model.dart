import 'package:fortune_client/data/model/rooms/get_v1_rooms_guest/get_v1_rooms_guest.dart';
import 'package:fortune_client/data/model/rooms/get_v1_rooms_host/get_v1_rooms_host.dart';
import 'package:fortune_client/data/repository/rooms/rooms_repository.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/pages/rooms/participating/participating_room_list_state.dart';
import 'package:fortune_client/view/routes/app_router.gr.dart';
import 'package:fortune_client/view/routes/route_path.dart';
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

  /// ------------ 遷移処理 ------------

  /// リクエスト一覧へ
  navigateToRequestConfirmation(String roomId, String roomTitle) {
    sl<AppRouter>().push(JoinRequestsConfirmationRoute(
      id: roomId,
      roomTitle: roomTitle,
    ));
  }

  /// メッセージへ
  navigateToMessage() {
    sl<AppRouter>().push(MessageRoomRoute(id: "id"));
  }

  /// ルーム詳細へ
  navigateToRoomDetail(String roomId) {
    sl<AppRouter>().push(RoomDetailRoute(roomId: roomId));
  }

  /// ルーム作成へ
  navigateToRoomCreation() {
    sl<AppRouter>().push(CreateRoomRoute());
  }

  /// ルームアクション：ホスト
  navigateToRoomActionsAsHost(GetV1RoomsHostResponseRoom room) {
    sl<AppRouter>().push(
      BottomSheetRouter(children: [HostRoomActions(room: room)]),
    );
  }

  /// ルームアクション：ゲスト
  navigateToRoomActionsAsGuest(GetV1RoomsGuestResponseRoom room) {
    sl<AppRouter>().push(
      BottomSheetRouter(children: [GuestRoomActions(room: room)]),
    );
  }
}
