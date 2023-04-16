import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// プロフィール画像を表示するウィジェット
class ProfilePhotoView extends StatefulHookConsumerWidget {
  const ProfilePhotoView({
    super.key,
    required this.images,
    this.visiblePhotoIndex = 0,
  });

  final List<String> images;
  final int visiblePhotoIndex;

  @override
  ConsumerState<ProfilePhotoView> createState() => _PhotoViewState();
}

class _PhotoViewState extends ConsumerState<ProfilePhotoView> {
  /// 表示中の画像のインデックス
  late int visiblePhotoIndex;

  /// 最後の画像のインデックス
  int get lastPhotoIndex => widget.images.length - 1;

  /// 表示中の画像
  String get visiblePhoto => widget.images[visiblePhotoIndex];

  @override
  void initState() {
    visiblePhotoIndex = widget.visiblePhotoIndex;
    super.initState();
  }

  /// 前の画像を表示
  onPrev() {
    setState(() {
      visiblePhotoIndex > 0
          ? visiblePhotoIndex-- // 前の画像の場合は前の画像を表示
          : visiblePhotoIndex = lastPhotoIndex; // 最初の画像の場合は最後に戻す
    });
  }

  /// 次の画像を表示
  onNext() {
    setState(() {
      visiblePhotoIndex < lastPhotoIndex
          ? visiblePhotoIndex++ // 次の画像の場合は次の画像を表示
          : visiblePhotoIndex = 0; // 最後の画像の場合は最初に戻す
    });
  }

  @override
  Widget build(BuildContext context) {
    /// 画像をキャッシュ
    for (String path in widget.images) {
      precacheImage(Image.network(path, fit: BoxFit.cover).image, context);
    }

    return SizedBox(
      height: 320,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.network(visiblePhoto, fit: BoxFit.cover),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: PhotoIndicator(
                photoCount: widget.images.length,
                visiblePhotoIndex: visiblePhotoIndex,
              ),
            ),
            PhotoController(
              onPrev: onPrev,
              onNext: onNext,
            ),
          ],
        ),
      ),
    );
  }
}

/// 画像の切り替え制御
class PhotoController extends StatelessWidget {
  const PhotoController({
    super.key,
    required this.onPrev,
    required this.onNext,
  });

  final VoidCallback onPrev;
  final VoidCallback onNext;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        GestureDetector(
          onTap: onPrev,
          child: FractionallySizedBox(
            widthFactor: 0.5,
            heightFactor: 1.0,
            alignment: Alignment.topLeft,
            child: Container(
              color: Colors.transparent,
            ),
          ),
        ),
        GestureDetector(
          onTap: onNext,
          child: FractionallySizedBox(
            widthFactor: 0.5,
            heightFactor: 1.0,
            alignment: Alignment.topRight,
            child: Container(
              color: Colors.transparent,
            ),
          ),
        ),
      ],
    );
  }
}

/// 画像のインジケーター
class PhotoIndicator extends StatelessWidget {
  const PhotoIndicator({
    super.key,
    required this.photoCount,
    required this.visiblePhotoIndex,
  });

  final int photoCount;
  final int visiblePhotoIndex;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(photoCount, (index) {
          return Container(
            width: 10,
            height: 10,
            margin: const EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              /// インジケーターの色
              /// TODO ダークモードの場合は後で実装する
              color: visiblePhotoIndex == index
                  ? Colors.white
                  : Colors.white.withOpacity(0.5),
              shape: BoxShape.circle,
            ),
          );
        }),
      ),
    );
  }
}
