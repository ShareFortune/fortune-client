import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fortune_client/view/pages/profile/profile/profile_view_model.dart';
import 'package:fortune_client/view/theme/app_theme.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({
    super.key,
    @PathParam() required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(profileViewModelProvider(id));
    final viewModel = ref.watch(profileViewModelProvider(id).notifier);

    return state.when(
      data: (data) {
        print(data.adress);
        return Scaffold(
          body: Center(child: Text("test")),
        );
      },
      error: (e, msg) => Scaffold(
        body: SafeArea(
          child: Center(
            child: Text(
              e.toString(),
            ),
          ),
        ),
      ),
      loading: () => const Scaffold(
        body: SafeArea(
          child: Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
