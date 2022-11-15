import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:step_1/app/modules/bmi/views/bmi_view.dart';
import 'dart:math' as math;

import '../../../constants/app_text.dart';

class BmiController extends GetxController {
  RxBool femalege = false.obs;
  RxInt slider = 180.obs;
  RxInt weight = 60.obs;
  RxInt age = 28.obs;

  // femalegeни falseге которо турган фукция керек. Аджа биз функция жазабыз
  void isFemaleFalse() => femalege.value = false;
  void isFemaleTrue() => femalege.value = true;

  void changeSlider(double value) => slider.value = value.toInt();
  void changeWeight(int value) => weight.value = value;
  void changeAge(int value) => age.value = value;

  void showResult(BuildContext context) {
    final res = weight / math.pow(weight / 100, 2);
    if (res <= 18.0) {
      dialogBuilder(context, AppTexts.thin);
      print('aryk');
    } else if (res >= 18.5 && res <= 24.9) {
      dialogBuilder(context, AppTexts.normal);
      print('norma');
    } else if (res >= 25) {
      dialogBuilder(context, AppTexts.fat);
      print('semiz');
    } else {
      dialogBuilder(context, AppTexts.sorry);
      print('joop jok');
    }
  }
}
