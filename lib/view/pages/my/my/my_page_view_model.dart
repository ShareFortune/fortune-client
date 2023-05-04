import 'package:fortune_client/data/repository/repository.dart';
import 'package:fortune_client/view/pages/my/my/my_page_state.dart';
import 'package:fortune_client/view/routes/route_navigator.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'my_page_view_model.g.dart';

@riverpod
class MyPageViewModel extends _$MyPageViewModel {
  @override
  Future<MyPageState> build() async {
    return MyPageState(
      profile: await Repository.profile.get(),
    );
  }

  /// 設定ページへ
  navigateToSettingPage() {
    navigator.navigateTo(RoutePath.setting);
  }
}
