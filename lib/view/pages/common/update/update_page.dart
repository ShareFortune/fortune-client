import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/widgets/dialog/Info_dialog.dart';
import 'package:url_launcher/url_launcher.dart';

class UpdatePage extends StatelessWidget {
  const UpdatePage({super.key});

  @override
  Widget build(BuildContext context) {
    showInfoDialog(
      context,
      LocaleKeys.error_forceUpdate.tr(),
      onPressed: () async {
        // TODO: Store
        String storeUrl = 'https://www.apple.com/jp/app-store/';

        final Uri url = Uri.parse(storeUrl);
        await canLaunchUrl(url)
            ? launchUrl(url, mode: LaunchMode.externalApplication)
            : throw '起動出来ません。';
      },
    );

    return Container(color: Colors.white);
  }
}
