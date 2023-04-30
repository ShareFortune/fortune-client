import 'package:fortune_client/data/repository/repository.dart';
import 'package:fortune_client/view/pages/rooms/participating/participating_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// final participatingViewModelProvider =
//     StateNotifierProvider<ParticipatingViewModel, ParticipatingState>(
//   (ref) {
//     return ParticipatingViewModel(
//       const ParticipatingState(
//         host: AsyncLoading(),
//         guest: AsyncLoading(),
//       ),
//     )..initialize();
//   },
// );

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
}
