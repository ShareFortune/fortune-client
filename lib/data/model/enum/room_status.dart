import 'package:freezed_annotation/freezed_annotation.dart';

enum RoomStatus {
  /// 募集中
  pending,

  /// 開催中
  opend,

  /// 終了
  closed,
}

extension RoomStatusEx on RoomStatus {
  static final rawValues = {
    RoomStatus.pending: "PENDING",
    RoomStatus.opend: "OPEN",
    RoomStatus.closed: "CLOSE",
  };

  String get rawValue => rawValues[this]!;

  static RoomStatus from(String rawValue) {
    return rawValues.keys.firstWhere((key) => rawValues[key] == rawValue);
  }
}

class RoomStatusConverter implements JsonConverter<RoomStatus, String> {
  const RoomStatusConverter();

  @override
  RoomStatus fromJson(String rawValue) => RoomStatusEx.from(rawValue);

  @override
  String toJson(RoomStatus status) => status.rawValue;
}
