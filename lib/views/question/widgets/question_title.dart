import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../utils/app_color.dart';
import '../../../utils/app_font_style.dart';
import '../models/question_model.dart';

class QuestionTitle extends StatelessWidget {
  const QuestionTitle({
    super.key,
    required this.questionModel,
  });
  final QuestionModel questionModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      padding: const EdgeInsets.all(10),
      decoration: ShapeDecoration(
        color: AppColor.kSecondaryColor,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: AppColor.kSecondaryColor),
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(questionModel.imagePath),
          const SizedBox(
            width: 8,
          ),
          Text(
            'Question ${questionModel.questionNumber}',
            style: AppFontStyle.buttonTextStyle12,
          ),
        ],
      ),
    );
  }
}
