import 'package:flutter/material.dart';
import 'package:new_quiz_app/utils/app_color.dart';

abstract class AppFontStyle {
  static const TextStyle bodyTextStyle16 = TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.w400,
  );

  static const TextStyle bodyTextStyle24 = TextStyle(
    color: Colors.white,
    fontSize: 24,
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.w500,
  );
  static const TextStyle buttonTextStyle18 = TextStyle(
    color: AppColor.kPrimaryColor,
    fontSize: 18,
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.w500,
  );
  static const TextStyle buttonTextStyle12 = TextStyle(
    color: Colors.white,
    fontSize: 12,
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.w400,
  );
  static const TextStyle answerItemTextStyle16 = TextStyle(
    color: AppColor.kPrimaryColor,
    fontSize: 16,
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.w500,
    height: 0,
  );
}
