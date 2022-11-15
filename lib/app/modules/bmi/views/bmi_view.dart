import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:step_1/app/constants/app_text.dart';
import 'package:step_1/app/theme/app_colors.dart';
import 'package:step_1/app/theme/app_text_styles.dart';
import 'package:step_1/app/utils/calculator_button.dart';
import 'package:step_1/app/utils/height_card.dart';
import 'package:step_1/app/utils/male_female.dart';
import 'package:step_1/app/utils/status_cards.dart';
import 'package:step_1/app/utils/weight_age.dart';

import '../controllers/bmi_controller.dart';

class BmiView extends GetView<BmiController> {
  const BmiView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final ctl = controller;
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.backgroundColor,
        title: const Text(
          AppTexts.appBarTitle,
          style: TextStyle(
              color: AppColors.forBmiTextColor,
              fontSize: 24,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Expanded(
                child: Row(
              children: [
                StatusCard(
                  child: InkWell(
                      onTap: () => ctl.isFemaleFalse(),
                      child: Obx(() {
                        return MaleFemale(
                          icon: Icons.male,
                          text: AppTexts.maleTitle,
                          isFemale: !ctl.femalege.value,
                        );
                      })),
                ),
                const SizedBox(
                  width: 20,
                ),
                StatusCard(
                    child: InkWell(
                        onTap: ctl.femalege,
                        child: Obx(() {
                          return MaleFemale(
                            icon: Icons.female,
                            text: AppTexts.femaleTitle,
                            isFemale: ctl.femalege.value,
                          );
                        }))),
              ],
            )),
            const SizedBox(
              height: 20,
            ),
            StatusCard(
              child: Obx(() {
                return HeightCard(
                  height: ctl.slider.value,
                  onChanged: ctl.changeSlider,
                );
              }),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: Row(
              children: [
                StatusCard(child: Obx(() {
                  return WeightAge(
                    text: AppTexts.weightTitle,
                    txt: ctl.weight.value,
                    remove: ctl.changeWeight,
                    add: ctl.changeWeight,
                  );
                })

                    // text: AppTexts.weightTitle,
                    // txt: 60,
                    ),
                const SizedBox(
                  width: 20,
                ),
                StatusCard(child: Obx(() {
                  return WeightAge(
                      text: AppTexts.ageTitle,
                      txt: ctl.age.value,
                      remove: ctl.changeAge,
                      add: ctl.changeAge);
                })

                    // text: AppTexts.ageTitle,
                    // txt: 28,
                    ),
              ],
            )),
          ],
        ),
      ),
      bottomNavigationBar: CalculatorButton(
        onTap: () => ctl.showResult(context),
      ),
    );
  }
}

Future<void> dialogBuilder(BuildContext context, String text) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: AppColors.backgroundColor,
        title: const Center(child: Text(AppTexts.appBarTitle)),
        content: Text(
          text,
          style: TextStyleWeather.bmiAndCalcolatorStyle,
          textAlign: TextAlign.center,
        ),
        actions: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              textStyle: Theme.of(context).textTheme.labelLarge,
            ),
            child: const Text(AppTexts.backButton),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
