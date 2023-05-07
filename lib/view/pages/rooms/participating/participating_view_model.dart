import 'package:fortune_client/data/repository/repository.dart';
import 'package:fortune_client/view/pages/rooms/participating/participating_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'participating_view_model.g.dart';

@riverpod
class ParticipatingViewModel extends _$ParticipatingViewModel {
  @override
  Future<ParticipatingState> build() async {
    return ParticipatingState(
      host: await Repository.rooms.fetchRoomsHost(),
      guest: await Repository.rooms.fetchRoomsGuest(),
    );
  }

  /// 次のページを取得 (ホスト)
  Future<void> fetchNextHostRooms() async {
    final value = state.value;
    if (value == null) return;
    state = AsyncData(value.copyWith(isFetchingNextHostPage: true));
    state = await AsyncValue.guard(() async {
      return value.copyWith(
        isFetchingNextHostPage: false,
        host: [
          ...value.host,
          ...await Repository.rooms.fetchRoomsHostNext(),
        ],
      );
    });
  }

  /// 次のページを取得 (ゲスト)
  Future<void> fetchNextGuestRooms() async {
    final value = state.value;
    if (value == null) return;
    state = AsyncData(value.copyWith(isFetchingNextGuestPage: true));
    state = await AsyncValue.guard(() async {
      return value.copyWith(
        isFetchingNextGuestPage: false,
        guest: [
          ...value.guest,
          ...await Repository.rooms.fetchRoomsGuestNext(),
        ],
      );
    });
  }
}
