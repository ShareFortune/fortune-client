import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fortune_client/presentation/views/res/size_config.dart';

import '../components/page.dart';

class ProfilePegeContainer extends ConsumerWidget {
  const ProfilePegeContainer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SizeConfig().init(context);

    return ProfilePegeComponent(
      containerSize: SizeConfig.screenHeight! * 0.8,
    );
  }
}
