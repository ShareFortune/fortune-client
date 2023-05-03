import 'dart:io';

import 'package:fortune_client/data/model/addresses/address/address.dart';
import 'package:fortune_client/data/model/enum/gender.dart';
import 'package:fortune_client/data/repository/repository.dart';
import 'package:fortune_client/util/converter/datetime_converter.dart';
import 'package:fortune_client/view/pages/profile/input/profile_input_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_input_view_model.g.dart';

@riverpod
class ProfileInputViewModel extends _$ProfileInputViewModel {
  @override
  ProfileInputState build() => const ProfileInputState();

  void changeBirthday(DateTime? birthday) {
    state = state.copyWith(birthday: birthday);
  }

  void changeGender(Gender? gender) {
    state = state.copyWith(gender: gender);
  }

  void changeAddress(Address? address) {
    state = state.copyWith(address: address);
  }

  void changeImages(File? image) {
    state = state.copyWith(image: image);
  }

  /// ユーザー作成ができるかどうか
  bool isPossibleToCreateUser(String? name) {
    return name?.isNotEmpty == true && state.birthday != null;
  }

  /// プロフィール作成ができるかどうか
  bool isPossibleToCreateProfile(String? nickname) {
    return nickname?.isNotEmpty == true &&
        state.image != null &&
        state.gender != null &&
        state.address != null;
  }

  Future<bool> createUser(String name) async {
    final date = DateTimeConverter.toYYYYMMDD(state.birthday!, delimiter: "-");
    return await Repository.users.create(name, date);
  }

  Future<bool> createProfile(String nickname) async {
    return await Repository.profile.create(
      name: nickname,
      mainImage: state.image!,
      gender: state.gender!,
      address: state.address!,
    );
  }
}
