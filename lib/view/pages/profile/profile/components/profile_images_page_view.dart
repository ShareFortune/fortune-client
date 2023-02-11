import 'package:flutter/material.dart';
import 'package:fortune_client/view/theme/app_theme.dart';

class ProfileImagesPageView extends StatelessWidget {
  const ProfileImagesPageView({
    super.key,
    required this.theme,
    required this.imageUrls,
  });

  final AppTheme theme;
  final List<String?> imageUrls;

  @override
  Widget build(BuildContext context) {
    final urls = imageUrls.takeWhile((value) {
      return value != null;
    }).toList();

    if (urls.isEmpty) return Container();

    return SizedBox(
      height: 320,
      child: PageView(
        controller: PageController(viewportFraction: 0.85),
        children: [
          for (var url in urls) ...{
            if (url != null)
              Container(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.network(url, fit: BoxFit.cover).image,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              )
          }
        ],
      ),
    );
  }
}
