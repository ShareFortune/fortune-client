import 'package:easy_localization/easy_localization.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';

enum ParticipatingType {
  all,
  host,
  guest,
}

extension ParticipatingTypeEx on ParticipatingType {
  get containerLabel {
    switch (this) {
      case ParticipatingType.all:
        return LocaleKeys.participating_room_list_page_guest_title.tr();
      case ParticipatingType.host:
        return LocaleKeys.participating_room_list_page_host_title.tr();
      case ParticipatingType.guest:
        return LocaleKeys.participating_room_list_page_guest_title.tr();
    }
  }

  String get showAllPageTitle {
    switch (this) {
      case ParticipatingType.all:
        return "全ての参加ルーム";
      case ParticipatingType.host:
        return "ホストで参加";
      case ParticipatingType.guest:
        return "ゲストで参加";
    }
  }
}
