import 'package:flutter/material.dart';
import 'package:new_quiz_app/views/result/result_view.dart';

import '../../../utils/app_image.dart';
import '../models/question_model.dart';

class QuestionManger {
  List<QuestionModel> questions = [
    QuestionModel(
        question:
            "How would you describe your level of satisfaction with the healthcare system?",
        questionNumber: 1,
        imagePath: AppImage.question1,
        answers: [
          "Strongly satisfied",
          "Satisfied",
          "Neutral",
          "Not satisfied"
        ],
        correctAnswer: "Neutral",
        questionScore: 10),
    QuestionModel(
        question: "What's your favorit color?",
        questionNumber: 2,
        imagePath: AppImage.question2,
        answers: ["red", "green", "yellow", "teal"],
        correctAnswer: "teal",
        questionScore: 20),
  ];

  void navigateToNextQuestion(
      {required context, required currentPage, required pageController}) {
    var previousPage = currentPage + 1;

    if (currentPage == questions.length - 1) {
      Navigator.pushNamed(context, ResultView.routeName,
          arguments: calculateScore());
    } else {
      pageController.animateToPage(previousPage,
          duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
    }
  }

  void navigateBackToPreviousQuestion(
      {required context, required currentPage, required pageController}) {
    var nextPage = currentPage - 1;

    currentPage == 0
        ? Navigator.pop(context)
        : pageController.animateToPage(nextPage,
            duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
  }

  int calculateScore() {
    var score = 0;
    for (var question in questions) {
      if (question.isCorrect) {
        score += question.questionScore;
      }
    }
    print(score);
    return score;
  }
}
