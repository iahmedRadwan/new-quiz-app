import 'package:flutter/material.dart';
import 'package:new_quiz_app/utils/app_color.dart';
import 'package:new_quiz_app/utils/app_font_style.dart';
import 'package:new_quiz_app/utils/app_padding.dart';
import 'package:new_quiz_app/views/home/widgets/background_view.dart';
import 'package:new_quiz_app/views/question/manger/question_manger.dart';
import 'package:new_quiz_app/widgets/custom_button.dart';
import 'answer_list_view.dart';
import 'question_title.dart';

class QuestionViewBody extends StatefulWidget {
  const QuestionViewBody({super.key, required this.questionManger});
  final QuestionManger questionManger;

  @override
  State<QuestionViewBody> createState() => _QuestionViewBodyState();
}

class _QuestionViewBodyState extends State<QuestionViewBody> {
  late PageController pageController;
  int currentPage = 0;

  @override
  void initState() {
    pageController = PageController(initialPage: 0);
    pageController.addListener(() {
      currentPage = pageController.page!.round();

      setState(() {});
    });

    super.initState();
  }

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
              QuestionTitle(
                  questionModel: widget.questionManger.questions[currentPage]),
              const SizedBox(
                height: 16,
              ),
              Expanded(
                child: PageView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: pageController,
                  itemCount: widget.questionManger.questions.length,
                  itemBuilder: (BuildContext context, int index) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.questionManger.questions[index].question,
                          style: AppFontStyle.bodyTextStyle24),
                      const SizedBox(
                        height: 32,
                      ),
                      AnswerListView(
                          questionModel:
                              widget.questionManger.questions[index]),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                      child: CustomButton(
                    onTap: () {
                      widget.questionManger.navigateBackToPreviousQuestion(
                          context: context,
                          currentPage: currentPage,
                          pageController: pageController);
                    },
                    text: 'Back',
                    isLeft: true,
                    bgColor: Colors.transparent,
                    textColor: Colors.white,
                    borderColor: AppColor.kSecondryActiveItemColor,
                  )),
                  const SizedBox(
                    width: 90,
                  ),
                  Expanded(
                      child: CustomButton(
                    onTap: () {
                      widget.questionManger.navigateToNextQuestion(
                          context: context,
                          currentPage: currentPage,
                          pageController: pageController);
                    },
                    text: "next",
                    isLeft: false,
                    bgColor: Colors.white,
                  )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
