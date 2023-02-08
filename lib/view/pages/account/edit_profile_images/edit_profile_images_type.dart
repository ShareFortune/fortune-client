import 'package:fortune_client/data/model/profiles/get_v1_profiles/get_v1_profiles.dart';

enum EditProfileImagesType {
  mainImage,
  secondImage,
  thirdImage,
  fourthImage,
  fifthImage,
  sixthImage,
}

extension EditProfileImagesTypeEx on EditProfileImagesType {
  static List<EditProfileImagesType> get subImages {
    return [
      EditProfileImagesType.secondImage,
      EditProfileImagesType.thirdImage,
      EditProfileImagesType.fourthImage,
      EditProfileImagesType.fifthImage,
      EditProfileImagesType.sixthImage,
    ];
  }

  String? imageURL(GetV1ProfilesResponse profile) {
    switch (this) {
      case EditProfileImagesType.mainImage:
        return profile.mainImageURL;
      case EditProfileImagesType.secondImage:
        return profile.secondImageURL;
      case EditProfileImagesType.thirdImage:
        return profile.thirdImageURL;
      case EditProfileImagesType.fourthImage:
        return profile.fourthImageURL;
      case EditProfileImagesType.fifthImage:
        return profile.fifthImageURL;
      case EditProfileImagesType.sixthImage:
        return profile.sixthImageURL;
    }
  }
}
