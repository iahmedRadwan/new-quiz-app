import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_quiz_app/utils/app_color.dart';
import 'package:new_quiz_app/utils/app_font_style.dart';
import 'package:new_quiz_app/utils/app_image.dart';

class ActiveAnswer extends StatelessWidget {
  const ActiveAnswer({super.key, required this.answer});
  final String answer;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      padding: const EdgeInsets.all(15),
      decoration: ShapeDecoration(
        gradient: const LinearGradient(
          begin: Alignment(1.00, 0.02),
          end: Alignment(-1, -0.02),
          colors: [
            AppColor.kPrimaryActiveItemColor,
            AppColor.kSecondryActiveItemColor
          ],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(AppImage.selectedItem),
          const SizedBox(
            width: 16,
          ),
          Text(answer, style: AppFontStyle.answerItemTextStyle16),
        ],
      ),
    );
  }
}
