import 'package:flutter/material.dart';
import 'package:step_1/app/theme/app_colors.dart';

class TextStyleWeather {
  static const numberStyle = TextStyle(
      color: AppColors.white, fontSize: 40, fontWeight: FontWeight.bold);

  static const bottomSheet = TextStyle(
      color: Color.fromARGB(255, 11, 61, 15),
      fontSize: 20,
      fontWeight: FontWeight.bold);

  static const TextStyle greyTextStyle =
      TextStyle(fontSize: 28, color: AppColors.forAllTextsColor);

  static const TextStyle cmStyle =
      TextStyle(color: AppColors.forSmColor, fontSize: 18, height: 3.3);

  static const TextStyle forTxtStyle = TextStyle(
      fontSize: 35,
      color: AppColors.forSliderNumColor,
      fontWeight: FontWeight.w700);

  static const TextStyle bmiAndCalcolatorStyle = TextStyle(
      color: AppColors.forBmiTextColor,
      fontSize: 24,
      fontWeight: FontWeight.w600);

  static const TextStyle value180 = TextStyle(
      fontSize: 45,
      color: AppColors.forSliderNumColor,
      fontWeight: FontWeight.w700);
}
