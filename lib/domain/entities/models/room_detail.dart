import '../const/types.dart';
import 'tag.dart';

class RoomDetail {
  final List<UserID> memberIDs;
  final List<Tag> tags;

  RoomDetail({
    required this.memberIDs,
    required this.tags,
  });
}
