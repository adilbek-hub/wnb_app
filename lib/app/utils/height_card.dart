import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:step_1/app/constants/app_text.dart';
import 'package:step_1/app/theme/app_colors.dart';
import 'package:step_1/app/theme/app_text_styles.dart';

class HeightCard extends StatelessWidget {
  const HeightCard({
    Key? key,
    required this.height,
    required this.onChanged,
  }) : super(key: key);
  final int height;
  final Function(double)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(),
        const Text(
          AppTexts.heightTitle,
          style: TextStyle(fontSize: 28, color: AppColors.forAllTextsColor),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$height",
              style: TextStyleWeather.value180,
            ),
            const Text(
              AppTexts.cmTitle,
              style: TextStyleWeather.cmStyle,
            ),
          ],
        ),
        SizedBox(
          width: 260.0,
          child: CupertinoSlider(
            value: height.toDouble(),
            max: 300,
            activeColor: AppColors.forSliderActiveColor,
            thumbColor: AppColors.forSliderthumpColor,
            onChanged: onChanged,
          ),
        ),
      ],
    );
  }
}
