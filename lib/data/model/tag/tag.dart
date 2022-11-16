import 'package:freezed_annotation/freezed_annotation.dart';

// class Tag {
//   TagID id;
//   String name;
//   String explanation;
//   Tag({
//     required this.id,
//     required this.name,
//     required this.explanation,
//   });
// }

part 'tag.freezed.dart';
part 'tag.g.dart';

@freezed
class Tag with _$Tag {
  const factory Tag({
    required String id,
    required String name,
    required String explanation,
  }) = _Tag;

  factory Tag.fromJson(Map<String, dynamic> json) => _$TagFromJson(json);
}
