import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fortune_client/gen/assets.gen.dart';
import 'package:fortune_client/view/pages/profile/profile/profile_container.dart';
import 'package:fortune_client/view/pages/profile/profile/profile_view_model.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:gap/gap.dart';

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
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
          ),
          extendBodyBehindAppBar: true,
          body: _body(context, theme),
        );
      },
      error: (e, msg) => Center(child: Text(e.toString())),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }

  Widget _body(BuildContext context, AppTheme theme) {
    return Stack(
      children: [
        _bgContainer(context),
        SingleChildScrollView(
          child: Column(
            children: [
              const Gap(kToolbarHeight),
              _image(theme),
              const ProfileContainer(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _image(AppTheme theme) {
    return Container(
      padding: const EdgeInsets.all(60),
      child: FractionallySizedBox(
        widthFactor: 1,
        child: AspectRatio(
          aspectRatio: 1,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: Assets.images.insta2.provider(),
              ),
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: theme.appColors.shadow,
                  blurRadius: 4,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _bgContainer(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.width + (kToolbarHeight * 2),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: Assets.images.insta2.provider(),
        ),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 10,
          sigmaY: 10,
        ),
        child: Container(),
      ),
    );
  }
}
