import 'package:flutter/material.dart';
import 'package:new_quiz_app/utils/app_router.dart';
import 'package:new_quiz_app/utils/app_theme.dart';
import 'package:new_quiz_app/views/home/home_view.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: AppRouter.appRouter,
      initialRoute: HomeView.routeName,
      themeMode: ThemeMode.light,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
    );
  }
}
