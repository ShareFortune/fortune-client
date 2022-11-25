import 'package:fortune_client/data/model/enum/gender.dart';
import 'package:fortune_client/data/model/member/member.dart';
import 'package:fortune_client/gen/assets.gen.dart';

const tId = "id";
const tName = "name";
const tGender = Gender.man;
final tMainImageUrl = Assets.images.user1.path;

final tMember = Member(
  id: tId,
  name: tName,
  gender: tGender,
  mainImageUrl: tMainImageUrl,
);
