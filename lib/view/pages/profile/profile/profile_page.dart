import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/gen/assets.gen.dart';
import 'package:fortune_client/view/pages/profile/profile/components/profile_container.dart';
import 'package:fortune_client/view/pages/profile/profile/profile_view_model.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProfilePage extends HookConsumerWidget {
  const ProfilePage({super.key, @PathParam() required this.id});

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(profileViewModelProvider(id));
    final viewModel = ref.watch(profileViewModelProvider(id).notifier);

    return state.when(
      data: (data) {
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
          ),
          extendBodyBehindAppBar: true,
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: Assets.images.insta2.provider(),
              ),
            ),
            child: ListView(
              children: [
                SizedBox(
                  height: 320,
                  child: PageView(
                    controller: PageController(viewportFraction: 0.85),
                    children: [
                      _image(theme),
                      _image(theme),
                      _image(theme),
                    ],
                  ),
                ),
                const ProfileContainer(),
              ],
            ),
          ),
        );
      },
      error: (e, msg) => Center(child: Text(e.toString())),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }

  Widget _image(AppTheme theme) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: Assets.images.insta2.provider(),
          ),
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
