import 'package:fortune_client/data/model/tags/tag/tag.dart';
import 'package:fortune_client/data/repository/repository.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/pages/tags/create/create_tag_state.dart';
import 'package:fortune_client/view/routes/app_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final createTagViewModelProvider =
    StateNotifierProvider<CreateTagViewModel, CreateTagState>(
  (_) => CreateTagViewModel(const CreateTagState()),
);

class CreateTagViewModel extends StateNotifier<CreateTagState> {
  CreateTagViewModel(super.state);

  bool isPossibleToCreate() {
    return state.name != null &&
        state.name!.isNotEmpty &&
        state.description != null &&
        state.description!.isNotEmpty;
  }

  changeName(String value) {
    state = state.copyWith(name: value);
  }

  changeDescription(String? value) {
    state = state.copyWith(description: value);
  }

  Future<bool> create() async {
    // try {
    //   if (!isPossibleToCreate()) return false;
    //   final id = await Repository.tags.create(state.name!, state.description!);
    //   // return getIt<AppRouter>().pop(Tag(id: id, name: state.name!));
    // } catch (e) {
    return false;
    // }
  }
}
