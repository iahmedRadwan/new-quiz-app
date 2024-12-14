import 'package:flutter/material.dart';
import 'package:new_quiz_app/utils/app_image.dart';
import 'package:new_quiz_app/utils/app_padding.dart';
import 'package:new_quiz_app/views/question/question_view.dart';
import '../../../utils/app_font_style.dart';
import '../../../widgets/custom_button.dart';
import 'background_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BackGroundView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: AppPadding.kHorizontalPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
                width: double.infinity,
              ),
              const Text('Good morning,', style: AppFontStyle.bodyTextStyle16),
              const SizedBox(
                height: 8,
              ),
              const Text('New topic is waiting',
                  style: AppFontStyle.bodyTextStyle24),
              Expanded(child: Image.asset(AppImage.backgroundImage)),
              CustomButton(
                onTap: () {
                  Navigator.pushNamed(context, QuestionView.routeName);
                },
                text: 'Start Quiz',
                bgColor: Colors.white,
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
