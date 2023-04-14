import 'package:fortune_client/data/model/rooms/get_v1_rooms_guest/get_v1_rooms_guest.dart';
import 'package:fortune_client/data/model/rooms/get_v1_rooms_host/get_v1_rooms_host.dart';
import 'package:fortune_client/data/repository/repository.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/pages/rooms/participating/participating_state.dart';
import 'package:fortune_client/view/pages/rooms/participating/participating_type.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final participatingViewModelProvider =
    StateNotifierProvider<ParticipatingViewModel, ParticipatingState>(
  (ref) => ParticipatingViewModel(
    const ParticipatingState(
      AsyncLoading(),
      AsyncLoading(),
    ),
  )..initialize(),
);

class ParticipatingViewModel extends StateNotifier<ParticipatingState> {
  ParticipatingViewModel(super.state);

  Future<void> initialize() async {
    await fetchHostRooms();
    await fetchGuestRooms();
  }

  Future<void> fetchHostRooms() async {
    final hostRooms = await AsyncValue.guard(() async {
      return await Repository.rooms.getRoomsToParticipateAsHost();
    });
    state = state.copyWith(host: hostRooms);
  }

  Future<void> fetchGuestRooms() async {
    final guestRooms = await AsyncValue.guard(() async {
      return await Repository.rooms.getRoomsToParticipateAsGuest();
    });
    state = state.copyWith(guest: guestRooms);
  }

  void showAllRooms() {}
  void showRequestingRooms() {}

  /// ------------ 遷移処理 ------------

  /// リクエスト一覧へ
  navigateToRequestConfirmation(String roomId, String roomTitle) {
    // getIt<AppRouter>().push(JoinRequestsConfirmationRoute(
    //   id: roomId,
    //   roomTitle: roomTitle,
    // ));
  }

  /// メッセージへ
  navigateToMessage() {
    // getIt<AppRouter>().push(MessageRoomRoute(id: "id"));
  }

  /// ルーム詳細へ
  navigateToRoomDetail(String roomId) {
    // getIt<AppRouter>().push(RoomDetailRoute(roomId: roomId));
  }

  /// ルーム作成へ
  navigateToRoomCreation() {
    // getIt<AppRouter>().push(CreateRoomRoute());
  }

  /// ルームアクション：ホスト
  navigateToRoomActionsAsHost(GetV1RoomsHostResponseRoom room) {
    // getIt<AppRouter>().push(
    //   BottomSheetRouter(children: [HostRoomActions(room: room)]),
    // );
  }

  /// ルームアクション：ゲスト
  navigateToRoomActionsAsGuest(GetV1RoomsGuestResponseRoom room) {
    // getIt<AppRouter>().push(
    //   BottomSheetRouter(children: [GuestRoomActions(room: room)]),
    // );
  }

  /// 全ての参加ルームへ
  navigateToParticipatingRoomList(ParticipatingType type) {
    // getIt<AppRouter>().push(ParticipatingRoomListRoute(type: type));
  }
}
