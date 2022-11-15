import 'package:flutter/material.dart';
import 'package:step_1/app/constants/app_text.dart';
import 'package:step_1/app/theme/app_colors.dart';
import 'package:step_1/app/theme/app_text_styles.dart';

class CalculatorButton extends StatelessWidget {
  const CalculatorButton({Key? key, required this.onTap}) : super(key: key);
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 70,
        width: double.infinity,
        color: AppColors.calculatorButtonColor,
        child: const Center(
            child: Text(
          AppTexts.calculatorTitle,
          style: TextStyleWeather.bmiAndCalcolatorStyle,
        )),
      ),
    );
  }
}
