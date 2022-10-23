import '../enum/gender.dart';

class Member {
  final String id;
  final String name;
  final Gender gender;
  final String mainImageUrl;

  Member({
    required this.id,
    required this.name,
    required this.gender,
    required this.mainImageUrl,
  });
}
