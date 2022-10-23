import '../const/types.dart';
import 'member.dart';
import 'tag.dart';

class RoomDetail {
  final List<Member> members;
  final List<Tag> tags;

  RoomDetail({
    required this.members,
    required this.tags,
  });
}
