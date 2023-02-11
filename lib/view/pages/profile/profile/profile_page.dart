import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/view/pages/profile/profile/components/profile_basic_info_container.dart';
import 'package:fortune_client/view/pages/profile/profile/components/profile_header.dart';
import 'package:fortune_client/view/pages/profile/profile/components/profile_images_page_view.dart';
import 'package:fortune_client/view/pages/profile/profile/components/profile_self_introduction_container.dart';
import 'package:fortune_client/view/pages/profile/profile/components/profile_tags_container.dart';
import 'package:fortune_client/view/pages/profile/profile/profile_view_model.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/other/error_widget.dart';
import 'package:fortune_client/view/widgets/other/loading_widget.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// プロフィールページ
///
/// [id]nullの場合はマイプロフィールを表示
class ProfilePage extends HookConsumerWidget {
  const ProfilePage({super.key, @PathParam() required this.id});

  final String? id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(profileViewModelProvider(id));
    final viewModel = ref.watch(profileViewModelProvider(id).notifier);

    return Scaffold(
      backgroundColor: theme.appColors.primary,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: state.profile.when(
        loading: () => loadingWidget(),
        error: (error, stackTrace) => errorWidget(error, stackTrace),
        data: (profile) {
          return ListView(
            children: [
              /// プロフィール画像
              ProfileImagesPageView(
                theme: theme,
                imageUrls: [
                  profile.secondImageURL,
                  profile.thirdImageURL,
                  profile.fourthImageURL,
                  profile.fifthImageURL,
                  profile.sixthImageURL,
                ],
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 30),
                decoration: BoxDecoration(
                  color: theme.appColors.onBackground,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// プロフィールヘッダー
                    ProfileHeader(
                      theme: theme,
                      iconURL: profile.mainImageURL,
                      name: profile.name,
                      age: 22,
                      address: profile.address,
                    ),

                    /// 自己紹介
                    ProfileSelfIntroductionContainer(
                      theme: theme,
                      selfIntroduction: profile.selfIntroduction ?? "",
                      onTap: null,
                    ),
                    const Divider(),

                    /// タグ
                    ProfileTagsContainer(
                      theme: theme,
                      tags: profile.tags ?? List.empty(),
                    ),
                    const Divider(),

                    /// 基本情報
                    ProfileBasicInfoContainer(
                      theme: theme,
                      address: profile.address,
                      stature: profile.height,
                      drinkFrequency: profile.drinkFrequency,
                      cigaretteFrequency: profile.cigaretteFrequency,
                    ),
                    const Gap(80),
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
