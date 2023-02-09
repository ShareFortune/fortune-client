import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/data/model/base/address_with_id/address_with_id.dart';
import 'package:fortune_client/data/model/base/tag/tag.dart';
import 'package:fortune_client/data/model/enum/age_group.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/pages/rooms/action/components/room_state_selective_form.dart';
import 'package:fortune_client/view/pages/rooms/action/components/room_state_text_field.dart';
import 'package:fortune_client/view/pages/rooms/action/components/room_state_transition_tile.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/form_field/base_text_field.dart';

///
/// タイトル
///
class RoomStateTitleInputField extends StatelessWidget {
  const RoomStateTitleInputField({
    super.key,
    required this.theme,
    required this.controller,
    this.onClear,
    this.onChanged,
  });

  final AppTheme theme;
  final TextEditingController controller;
  final void Function()? onClear;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return RoomStateTextInputField(
      theme: theme,
      title: LocaleKeys.data_room_title_title.tr(),
      content: BaseTextField(
        controller: controller,
        maxLength: 20,
        onClear: onClear,
        onChanged: onChanged,
        hintText: LocaleKeys.create_room_page_roomTitleHint.tr(),
      ),
    );
  }
}

///
/// 募集人数
///
class RoomStateMembersNumInputField extends StatelessWidget {
  const RoomStateMembersNumInputField({
    super.key,
    this.membersNum,
    required this.onSelect,
  });

  final int? membersNum;
  final Function(String) onSelect;

  @override
  Widget build(BuildContext context) {
    return RoomStateSelectiveForm(
      title: LocaleKeys.data_room_membersNum_title.tr(),
      value: membersNum != null
          ? LocaleKeys.data_room_membersNum_data_all.tr(
              args: [membersNum.toString()],
            )
          : null,
      separator: "人",
      items: List.generate(7, (index) => "${index + 4}").toList(),
      onSelect: onSelect,
    );
  }
}

///
/// 募集年齢
///
class RoomStateAgeGroupInputField extends StatelessWidget {
  const RoomStateAgeGroupInputField({
    super.key,
    this.ageGroup,
    required this.onSelect,
  });

  final AgeGroup? ageGroup;
  final Function(String) onSelect;

  @override
  Widget build(BuildContext context) {
    return RoomStateSelectiveForm(
      title: LocaleKeys.data_room_age_title.tr(),
      value: ageGroup?.text,
      items: AgeGroup.values.map((e) => e.text).toList(),
      onSelect: onSelect,
    );
  }
}

///
/// 場所
///
class RoomStateAddressInputField extends StatelessWidget {
  const RoomStateAddressInputField({
    super.key,
    this.addressWithId,
    required this.onTap,
  });

  final AddressWithId? addressWithId;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return RoomStateTransitionTile(
      title: LocaleKeys.data_room_address_title.tr(),
      value: addressWithId?.text,
      onTap: onTap,
    );
  }
}

///
/// タグ
///
class RoomStateTagsInputField extends StatelessWidget {
  const RoomStateTagsInputField({
    super.key,
    this.tags,
    required this.onTap,
  });

  final List<Tag>? tags;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return RoomStateTransitionTile(
      title: LocaleKeys.data_room_tags_title.tr(),
      value: tags?.map((e) => e.name).join("、"),
      onTap: onTap,
    );
  }
}

///
/// 詳細説明
///
class RoomStateExplanationInputField extends StatelessWidget {
  const RoomStateExplanationInputField({
    super.key,
    required this.theme,
    required this.controller,
    this.onChanged,
  });

  final AppTheme theme;
  final TextEditingController controller;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return RoomStateTextInputField(
      theme: theme,
      required: false,
      title: LocaleKeys.data_room_description_title.tr(),
      content: BaseTextField(
        controller: controller,
        maxLength: 500,
        minLines: 6,
        maxLines: 100,
        isDisplaySuffixIcon: false,
        onChanged: onChanged,
        hintText: LocaleKeys.data_room_description_hint.tr(),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 15,
        ),
      ),
    );
  }
}
