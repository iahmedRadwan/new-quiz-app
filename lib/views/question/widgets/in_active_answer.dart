import 'package:flutter/material.dart';
import 'package:new_quiz_app/utils/app_color.dart';
import 'package:new_quiz_app/utils/app_font_style.dart';

class InActiveAnswer extends StatelessWidget {
  const InActiveAnswer({super.key, required this.answer, required this.onTap});
  final String answer;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: double.infinity,
        padding: const EdgeInsets.all(15),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 19,
              height: 19,
              padding: const EdgeInsets.all(5),
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side:
                      const BorderSide(width: 1, color: AppColor.kPrimaryColor),
                  borderRadius: BorderRadius.circular(9.50),
                ),
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Text(
              answer,
              style: AppFontStyle.answerItemTextStyle16,
            ),
          ],
        ),
      ),
    );
  }
}
