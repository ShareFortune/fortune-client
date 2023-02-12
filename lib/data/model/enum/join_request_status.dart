import 'package:freezed_annotation/freezed_annotation.dart';

enum JoinRequestStatus {
  /// 申請許可
  accepted,

  /// 申請却下
  rejected,

  /// 申請中
  pending,

  /// 申請キャンセル
  canceled,
}

extension JoinRequestStatusEx on JoinRequestStatus {
  static final rawValues = {
    JoinRequestStatus.accepted: "ACCEPTED",
    JoinRequestStatus.rejected: "REJECTED",
    JoinRequestStatus.pending: "PENDING",
    JoinRequestStatus.canceled: "CANCELED",
  };

  String get rawValue => rawValues[this]!;

  static JoinRequestStatus from(String rawValue) {
    return rawValues.keys.firstWhere((key) => rawValues[key] == rawValue);
  }
}

class JoinRequestStatusConverter
    implements JsonConverter<JoinRequestStatus, String> {
  const JoinRequestStatusConverter();

  @override
  JoinRequestStatus fromJson(String rawValue) =>
      JoinRequestStatusEx.from(rawValue);

  @override
  String toJson(JoinRequestStatus status) => status.rawValue;
}
