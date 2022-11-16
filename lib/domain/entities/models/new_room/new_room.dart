import 'package:fortune_client/domain/entities/enum/age_group.dart';
import 'package:fortune_client/domain/entities/models/address/address.dart';
import 'package:fortune_client/domain/entities/models/tag/tag.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_room.freezed.dart';

@freezed
class NewRoom with _$NewRoom {
  @Assert('title.length < 3', 'ユーザ名は3文字以上です。')
  @Assert('title.length > 10', 'ユーザ名は10文字以下です。')
  const factory NewRoom({
    /// ルームタイトル
    required String title,

    /// 内容
    required String content,

    /// 募集人数
    required int membersNum,

    /// 募集年齢
    required AgeGroup ageGroup,

    /// 開催予定地
    required Address address,

    /// 設定タグ
    required List<Tag> tags,
  }) = _NewRoom;
}

// @freezed
// class RoomTitle with _$RoomTitle {
//   const RoomTitle._();
//   const factory RoomTitle({
//     @Default("") String title,
//   }) = _RoomTitle;

//   get value => title;

//   bool set(String value) {
//     if (value.length < 3) throw ArgumentError.value("ユーザ名は3文字以上です。");
//     if (value.length > 10) throw ArgumentError.value("ユーザ名は10文字以上です。");
//     return true;
//   }
// }

// @freezed
// class RoomContent with _$RoomContent {
//   const RoomContent._();
//   const factory RoomContent({
//     @Default("") String content,
//   }) = _RoomContent;

//   get value => content;

//   set(String value) {
//     if (value.isEmpty) throw ArgumentError.value("説明が入力されていません。");
//     if (value.length > 100) throw ArgumentError.value("説明は100文字以下です。");
//   }
// }

// @freezed
// class RoomMembersNum with _$RoomMembersNum {
//   const RoomMembersNum._();
//   const factory RoomMembersNum({
//     @Default(4) int membersNum,
//   }) = _RoomMembersNum;

//   get value => membersNum;

//   set(int value) {
//     if (value < 4) throw ArgumentError.value("募集人数は4名以上にして下さい。");
//     if (value > 10) throw ArgumentError.value("募集人数は10名以下にして下さい。");
//   }
// }

// @freezed
// class RoomAgeGroup with _$RoomAgeGroup {
//   const RoomAgeGroup._();
//   const factory RoomAgeGroup({
//     @Default(AgeGroup.fifties) AgeGroup ageGroup,
//   }) = _RoomAgeGroup;

//   get value => ageGroup;

//   set(AgeGroup value) {}
// }

// @freezed
// class RoomTest with _$RoomTest {
//   const RoomTest._();
//   const factory RoomTest({
//     @Default(AgeGroup.fifties) AgeGroup ageGroup,
//   }) = _RoomTest;
// }
