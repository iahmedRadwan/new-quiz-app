import 'package:flutter/material.dart';
import 'package:new_quiz_app/views/question/manger/question_manger.dart';
import 'widgets/question_view_body.dart';

class QuestionView extends StatelessWidget {
  const QuestionView({super.key});
  static const String routeName = "question_view";

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        body: QuestionViewBody(
          questionManger: QuestionManger(),
        ),
      ),
    );
  }
}
