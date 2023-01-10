import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_id.freezed.dart';
part 'response_id.g.dart';

@freezed
class ResponseID with _$ResponseID {
  const factory ResponseID({
    required String id,
  }) = _ResponseID;

  factory ResponseID.fromJson(Map<String, dynamic> json) =>
      _$ResponseIDFromJson(json);
}
