import 'package:fortune_client/data/model/profiles/get_v1_profiles/get_v1_profiles.dart';
import 'package:fortune_client/util/storage/app_pref_key.dart';

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

  /// SharedPreferences key
  String get keyString {
    switch (this) {
      case ProfileImagesType.mainImage:
        return AppPrefKey.profileMainImage.keyString;
      case ProfileImagesType.secondImage:
        return AppPrefKey.profileSecondImage.keyString;
      case ProfileImagesType.thirdImage:
        return AppPrefKey.profileThirdImage.keyString;
      case ProfileImagesType.fourthImage:
        return AppPrefKey.profileFourthImage.keyString;
      case ProfileImagesType.fifthImage:
        return AppPrefKey.profileFifthImage.keyString;
      case ProfileImagesType.sixthImage:
        return AppPrefKey.profileSixthImage.keyString;
    }
  }

  String? imageURL(GetV1ProfilesResponse profile) {
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
