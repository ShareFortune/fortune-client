/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $StubGen {
  const $StubGen();

  /// File path: stub/message.json
  String get message => 'stub/message.json';

  /// File path: stub/message_rooms_host.json
  String get messageRoomsHost => 'stub/message_rooms_host.json';

  /// File path: stub/participating_room_list.json
  String get participatingRoomList => 'stub/participating_room_list.json';

  /// File path: stub/profile.json
  String get profile => 'stub/profile.json';

  /// File path: stub/profile_create.json
  String get profileCreate => 'stub/profile_create.json';

  /// File path: stub/room_detail.json
  String get roomDetail => 'stub/room_detail.json';

  /// File path: stub/room_list.json
  String get roomList => 'stub/room_list.json';

  /// List of all assets
  List<String> get values => [
        message,
        messageRoomsHost,
        participatingRoomList,
        profile,
        profileCreate,
        roomDetail,
        roomList
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  $AssetsImagesIconsGen get icons => const $AssetsImagesIconsGen();

  /// File path: assets/images/img_recipe_no_892-1.jpg
  AssetGenImage get imgRecipeNo8921 =>
      const AssetGenImage('assets/images/img_recipe_no_892-1.jpg');

  /// File path: assets/images/insta2.jpeg
  AssetGenImage get insta2 => const AssetGenImage('assets/images/insta2.jpeg');

  /// File path: assets/images/insta3.jpeg
  AssetGenImage get insta3 => const AssetGenImage('assets/images/insta3.jpeg');

  /// File path: assets/images/insta4.jpeg
  AssetGenImage get insta4 => const AssetGenImage('assets/images/insta4.jpeg');

  /// File path: assets/images/insta5.jpeg
  AssetGenImage get insta5 => const AssetGenImage('assets/images/insta5.jpeg');

  /// File path: assets/images/thinder.jpeg
  AssetGenImage get thinder =>
      const AssetGenImage('assets/images/thinder.jpeg');

  /// File path: assets/images/user1.jpeg
  AssetGenImage get user1 => const AssetGenImage('assets/images/user1.jpeg');

  /// List of all assets
  List<AssetGenImage> get values =>
      [imgRecipeNo8921, insta2, insta3, insta4, insta5, thinder, user1];
}

class $AssetsL10nGen {
  const $AssetsL10nGen();

  /// File path: assets/l10n/ja-JP.json
  String get jaJP => 'assets/l10n/ja-JP.json';

  /// List of all assets
  List<String> get values => [jaJP];
}

class $AssetsImagesIconsGen {
  const $AssetsImagesIconsGen();

  /// File path: assets/images/icons/icon_add.svg
  SvgGenImage get iconAdd =>
      const SvgGenImage('assets/images/icons/icon_add.svg');

  /// File path: assets/images/icons/icon_apple.svg
  SvgGenImage get iconApple =>
      const SvgGenImage('assets/images/icons/icon_apple.svg');

  /// File path: assets/images/icons/icon_arrow_drop_down.svg
  SvgGenImage get iconArrowDropDown =>
      const SvgGenImage('assets/images/icons/icon_arrow_drop_down.svg');

  /// File path: assets/images/icons/icon_arrow_right.svg
  SvgGenImage get iconArrowRight =>
      const SvgGenImage('assets/images/icons/icon_arrow_right.svg');

  /// File path: assets/images/icons/icon_delete.svg
  SvgGenImage get iconDelete =>
      const SvgGenImage('assets/images/icons/icon_delete.svg');

  /// File path: assets/images/icons/icon_edit.svg
  SvgGenImage get iconEdit =>
      const SvgGenImage('assets/images/icons/icon_edit.svg');

  /// File path: assets/images/icons/icon_google.svg
  SvgGenImage get iconGoogle =>
      const SvgGenImage('assets/images/icons/icon_google.svg');

  /// File path: assets/images/icons/icon_link.svg
  SvgGenImage get iconLink =>
      const SvgGenImage('assets/images/icons/icon_link.svg');

  /// File path: assets/images/icons/icon_location.svg
  SvgGenImage get iconLocation =>
      const SvgGenImage('assets/images/icons/icon_location.svg');

  /// File path: assets/images/icons/icon_more_vert.svg
  SvgGenImage get iconMoreVert =>
      const SvgGenImage('assets/images/icons/icon_more_vert.svg');

  /// File path: assets/images/icons/icon_profile.svg
  SvgGenImage get iconProfile =>
      const SvgGenImage('assets/images/icons/icon_profile.svg');

  /// File path: assets/images/icons/icon_profile_dark.svg
  SvgGenImage get iconProfileDark =>
      const SvgGenImage('assets/images/icons/icon_profile_dark.svg');

  /// File path: assets/images/icons/icon_room.svg
  SvgGenImage get iconRoom =>
      const SvgGenImage('assets/images/icons/icon_room.svg');

  /// File path: assets/images/icons/icon_swap_vert.svg
  SvgGenImage get iconSwapVert =>
      const SvgGenImage('assets/images/icons/icon_swap_vert.svg');

  /// File path: assets/images/icons/icon_twitter.svg
  SvgGenImage get iconTwitter =>
      const SvgGenImage('assets/images/icons/icon_twitter.svg');

  /// File path: assets/images/icons/icon_user_add.svg
  SvgGenImage get iconUserAdd =>
      const SvgGenImage('assets/images/icons/icon_user_add.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        iconAdd,
        iconApple,
        iconArrowDropDown,
        iconArrowRight,
        iconDelete,
        iconEdit,
        iconGoogle,
        iconLink,
        iconLocation,
        iconMoreVert,
        iconProfile,
        iconProfileDark,
        iconRoom,
        iconSwapVert,
        iconTwitter,
        iconUserAdd
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsL10nGen l10n = $AssetsL10nGen();
  static const $StubGen stub = $StubGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    Color? color,
    BlendMode colorBlendMode = BlendMode.srcIn,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    Clip clipBehavior = Clip.hardEdge,
    bool cacheColorFilter = false,
    SvgTheme? theme,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      color: color,
      colorBlendMode: colorBlendMode,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
      theme: theme,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
