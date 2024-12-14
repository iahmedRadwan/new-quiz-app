import 'package:flutter/material.dart';
import 'package:new_quiz_app/views/home/home_view.dart';
import 'package:new_quiz_app/views/question/question_view.dart';
import 'package:new_quiz_app/views/result/result_view.dart';

abstract class AppRouter {
  static final Map<String, WidgetBuilder> appRouter = {
    HomeView.routeName: (context) => const HomeView(),
    QuestionView.routeName: (context) => const QuestionView(),
    ResultView.routeName: (context) => const ResultView(),
  };
}
