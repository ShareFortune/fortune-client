import 'package:freezed_annotation/freezed_annotation.dart';

enum RoomStatus {
  pending,
  opend,
  closed,
}

extension RoomStatusEx on RoomStatus {
  static final rawValues = {
    RoomStatus.pending: "PENDING",
    RoomStatus.opend: "OPEN",
    RoomStatus.closed: "CLOSE",
  };

  String get rawValue => rawValues[this]!;

  static RoomStatus? from(String rawValue) =>
      rawValues.keys.firstWhere((key) => rawValues[key] == rawValue);
}

class RoomStatusEnumConverter implements JsonConverter<RoomStatus?, String?> {
  const RoomStatusEnumConverter();

  @override
  RoomStatus? fromJson(String? rawValue) =>
      (rawValue == null) ? null : RoomStatusEx.from(rawValue);

  @override
  String? toJson(RoomStatus? status) => status?.rawValue;
}
