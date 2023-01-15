import 'package:freezed_annotation/freezed_annotation.dart';

enum RoomJoinRequestStatus {
  accepted, // 申請許可
  rejected, // 申請却下
  pending, // 申請中
  canceled, // 申請キャンセル
}

extension RoomJoinRequestStatusEx on RoomJoinRequestStatus {
  static final rawValues = {
    RoomJoinRequestStatus.accepted: "ACCEPTED",
    RoomJoinRequestStatus.rejected: "REJECTED",
    RoomJoinRequestStatus.pending: "PENDING",
    RoomJoinRequestStatus.canceled: "CANCELED",
  };

  String get rawValue => rawValues[this]!;

  static RoomJoinRequestStatus? from(String rawValue) =>
      rawValues.keys.firstWhere((key) => rawValues[key] == rawValue);
}

class RoomJoinRequestStatusEnumConverter
    implements JsonConverter<RoomJoinRequestStatus?, String?> {
  const RoomJoinRequestStatusEnumConverter();

  @override
  RoomJoinRequestStatus? fromJson(String? rawValue) =>
      (rawValue == null) ? null : RoomJoinRequestStatusEx.from(rawValue);

  @override
  String? toJson(RoomJoinRequestStatus? status) => status?.rawValue;
}
