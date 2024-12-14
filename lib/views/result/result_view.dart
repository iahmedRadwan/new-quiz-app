import 'package:flutter/material.dart';
import 'package:new_quiz_app/utils/app_font_style.dart';
import 'package:new_quiz_app/views/home/widgets/background_view.dart';

class ResultView extends StatelessWidget {
  const ResultView({super.key});
  static const String routeName = "result_view";

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as int;

    return Scaffold(
      body: BackGroundView(
          child: Center(
        child: Text(
          "Result = $args",
          style: AppFontStyle.bodyTextStyle24,
        ),
      )),
    );
  }
}
