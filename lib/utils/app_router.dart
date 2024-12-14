import 'package:flutter/material.dart';
import 'package:new_quiz_app/views/home/home_view.dart';

abstract class AppRouter {
  static final Map<String, WidgetBuilder> appRouter = {
    HomeView.routeName: (context) => const HomeView()
  };
}
