import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:fortune_client/data/repository/profile/profile_repository.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/pages/profile/create/entry_basic_profile/basic_profile_entry_view_model.dart';
import 'package:fortune_client/view/pages/profile/create/entry_detailed_profile/detailed_profile_entry_view_model.dart';
import 'package:fortune_client/view/pages/profile/create/entry_profile_icon_image/profile_icon_image_entry_view_model.dart';
import 'package:fortune_client/view/pages/profile/create/entry_profile_sub_image/entry_profile_sub_image_state.dart';
import 'package:fortune_client/view/routes/app_router.gr.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';

final entryProfileSubImageViewModelProvider = StateNotifierProvider<
    EntryProfileSubImageViewModel, EntryProfileSubImageState>(
  (ref) => EntryProfileSubImageViewModel(ref, ref.watch(Repository.profile)),
);

class EntryProfileSubImageViewModel
    extends StateNotifier<EntryProfileSubImageState> {
  EntryProfileSubImageViewModel(this._ref, this.repository)
      : super(const EntryProfileSubImageState());

  final Ref _ref;
  final ProfileRepository repository;

  Future<void> pickImageFirst() async {
    state = state.copyWith(firstImageFile: await _pickImage());
  }

  Future<void> pickImageSecond() async {
    state = state.copyWith(secondImageFile: await _pickImage());
  }

  Future<void> pickImageThird() async {
    state = state.copyWith(thirdImageFile: await _pickImage());
  }

  Future<void> pickImageFourth() async {
    state = state.copyWith(fourthImageFile: await _pickImage());
  }

  Future<File?> _pickImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) return null;
    return File(image.path);
  }

  create() async {
    final basic = _ref.read(basicProfileEntryViewModelProvider);
    final detail = _ref.read(detailedProfileEntryViewModelProvider);
    final icon = _ref.read(profileIconImageEntryViewModelProvider);

    await repository.create(
      iconImage: icon.imageFile,
      mainImage: state.firstImageFile,
      secondImage: state.secondImageFile,
      thirdImage: state.thirdImageFile,
      fourthImage: state.fourthImageFile,
      name: basic.name,
      gender: basic.gender,
      height: detail.height,
      drinkFrequency: detail.drinkFrequency,
      cigaretteFrequency: detail.cigaretteFrequency,
    );
  }

  onTapNextBtn(StackRouter router) async {
    /// ステートに不足あればエラーを返す。
    ///
    /// 作成
    AsyncValue.guard(() async => await create());

    /// プロフィールが存在すれば遷移
    /// オートガードでガードで制御できるか検証
    await _pushNext(router);
  }

  _pushNext(StackRouter router) async {
    await router.push(const HomeRoute());
  }
}
