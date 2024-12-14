import 'package:flutter/material.dart';
import 'package:new_quiz_app/utils/app_padding.dart';
import 'package:new_quiz_app/views/question/models/question_model.dart';
import 'package:new_quiz_app/views/question/widgets/active_answer.dart';
import 'package:new_quiz_app/views/question/widgets/in_active_answer.dart';

class AnswerListView extends StatefulWidget {
  const AnswerListView({super.key, required this.questionModel});
  final QuestionModel questionModel;

  @override
  State<AnswerListView> createState() => _AnswerListViewState();
}

class _AnswerListViewState extends State<AnswerListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: widget.questionModel.answers.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: AppPadding.kHorizontalPadding),
          child: AnimatedCrossFade(
            firstChild: InActiveAnswer(
              answer: widget.questionModel.answers[index],
              onTap: () {
                widget.questionModel.answers[index] ==
                        widget.questionModel.correctAnswer
                    ? widget.questionModel.isCorrect = true
                    : widget.questionModel.isCorrect = false;
                widget.questionModel.selecedAnsewr = index;

                setState(() {});
              },
            ),
            secondChild: ActiveAnswer(
              answer: widget.questionModel.answers[index],
            ),
            crossFadeState: widget.questionModel.selecedAnsewr == index
                ? CrossFadeState.showSecond
                : CrossFadeState.showFirst,
            duration: const Duration(milliseconds: 500),
            firstCurve: Curves.easeIn,
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const SizedBox(
        height: 10,
      ),
    );
  }
}
