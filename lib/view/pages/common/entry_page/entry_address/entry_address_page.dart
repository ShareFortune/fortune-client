import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fortune_client/data/model/base/address/address.dart';
import 'package:fortune_client/data/model/base/address_with_id/address_with_id.dart';
import 'package:fortune_client/gen/assets.gen.dart';
import 'package:fortune_client/view/pages/common/entry_page/entry_address/components/entry_address_text_field.dart';
import 'package:fortune_client/view/pages/common/entry_page/entry_address/entry_address_view_model.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/app_bar/back_app_bar.dart';
import 'package:fortune_client/view/widgets/other/loading_widget.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EntryAddressPage extends HookConsumerWidget {
  EntryAddressPage({super.key});

  final controller = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(entryAddressViewModelProvider);
    final viewModel = ref.watch(entryAddressViewModelProvider.notifier);

    /// 検索結果
    final searchResults = state.searchResults.maybeWhen(
      data: (data) {
        final textStyle = theme.textTheme.h40.bold();
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("候補", style: textStyle.paint(theme.appColors.subText1)),
            const Gap(20),
            Column(
              children: data.map((e) {
                return _addressTile(theme, e, () => viewModel.select(e));
              }).toList(),
            ),
          ],
        );
      },
      orElse: () => loadingWidget(),
    );

    return Scaffold(
      backgroundColor: theme.appColors.onBackground,
      appBar: const BackAppBar(title: "居住地を入力する"),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(30),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: EntryAddressTextField(
                  controller: controller,
                  hintText: "市や区で検索",
                  clearCallBack: () {
                    viewModel.changeSearchResultsIsDisplay(false);
                    controller.clear();
                  },
                  onChanged: (p0) {
                    if (p0.isEmpty) {
                      viewModel.changeSearchResultsIsDisplay(false);
                    }
                  },
                  onEditingComplete: () {
                    FocusScope.of(context).unfocus();
                    viewModel.changeSearchResultsIsDisplay(true);
                    viewModel.search(controller.text);
                  }),
            ),
            const Gap(50),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: state.searchResultsIsDisplay
                  ? searchResults
                  : _annotation(theme),
            )
          ],
        ),
      ),
    );
  }

  Column _annotation(AppTheme theme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "入力された情報の取り扱いについて",
          style: theme.textTheme.h40.paint(theme.appColors.subText1).bold(),
        ),
        const Gap(20),
        Text(
          "入力された情報がどのように扱われるのか?\n他のユーザーに対して表示されるのかについて?",
          style: theme.textTheme.h40.paint(theme.appColors.subText1),
        ),
      ],
    );
  }

  Widget _addressTile(
    AppTheme theme,
    AddressWithId address,
    VoidCallback onTap,
  ) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Row(
          children: [
            SvgPicture.asset(
              Assets.images.icons.iconLocation.path,
              fit: BoxFit.contain,
              width: 24,
              height: 24,
            ),
            const Gap(10),
            Text(
              address.text,
              style: theme.textTheme.h40.paint(theme.appColors.subText2),
            ),
          ],
        ),
      ),
    );
  }
}
