import 'package:flutter/material.dart';
import 'package:new_quiz_app/utils/app_color.dart';
import 'package:new_quiz_app/utils/app_image.dart';

class BackGroundView extends StatelessWidget {
  const BackGroundView({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.transparent,
        gradient: LinearGradient(
          begin: Alignment(0.26, -0.97),
          end: Alignment(-0.26, 0.97),
          colors: [
            AppColor.kPrimaryBackGroundColor,
            AppColor.kSecondryBackGroundColor
          ],
        ),
        image: DecorationImage(
          image: AssetImage(AppImage.backgroundShadow),
        ),
      ),
      child: child,
    );
  }
}
