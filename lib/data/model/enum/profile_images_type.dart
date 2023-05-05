import 'package:fortune_client/data/model/profile/profile_response/profile_response.dart';

enum ProfileImagesType {
  mainImage,
  secondImage,
  thirdImage,
  fourthImage,
  fifthImage,
  sixthImage,
}

extension ProfileImagesTypeEx on ProfileImagesType {
  static List<ProfileImagesType> get subImages {
    return [
      ProfileImagesType.secondImage,
      ProfileImagesType.thirdImage,
      ProfileImagesType.fourthImage,
      ProfileImagesType.fifthImage,
      ProfileImagesType.sixthImage,
    ];
  }

  String? imageURL(ProfileResponse profile) {
    switch (this) {
      case ProfileImagesType.mainImage:
        return profile.mainImageURL;
      case ProfileImagesType.secondImage:
        return profile.secondImageURL;
      case ProfileImagesType.thirdImage:
        return profile.thirdImageURL;
      case ProfileImagesType.fourthImage:
        return profile.fourthImageURL;
      case ProfileImagesType.fifthImage:
        return profile.fifthImageURL;
      case ProfileImagesType.sixthImage:
        return profile.sixthImageURL;
    }
  }
}
