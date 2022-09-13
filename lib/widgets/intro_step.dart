import 'package:flutter/cupertino.dart';
import 'package:raizen_smart_squares/core/app_export.dart';

class IntroStep extends StatelessWidget {
  final String imagePath;

  final String text;
  final Color textColor;

  const IntroStep({
    super.key,
    required this.imagePath,
    required this.text,
    this.textColor = ColorConstant.light00,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(flex: 2, child: ImageView(imagePath: imagePath)),
          const SizedBox(height: 32),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: AppStyle.txtIntro.copyWith(
                  color: textColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
