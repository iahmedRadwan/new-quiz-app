import 'package:flutter/material.dart';
import 'package:new_quiz_app/utils/app_color.dart';

abstract class AppTheme {
  static ThemeData lightTheme =
      ThemeData(scaffoldBackgroundColor: AppColor.kPrimaryBackGroundColor);
  static ThemeData darkTheme = ThemeData();
}
