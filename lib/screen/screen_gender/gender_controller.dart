import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gmi_calculator/constants/app_const.dart';

class GenderController extends GetxController {
  Color maleBoxColor = activeColor;
  Color femaleBoxColor = inActiveColor;
  final ageController = TextEditingController();

  increment() {
    int ageValue = int.tryParse(ageController.text) ?? 0;
    ageValue++;
    ageController.text = ageValue.toString();
    update();
  }

  decrement() {
    int ageValue = int.tryParse(ageController.text) ?? 0;
    ageValue--;
    ageValue >= 0 ? ageController.text = ageValue.toString() : 0;
    update();
  }

  void updateBoxColor(int value) {
    if (value == 1) {
      if (maleBoxColor == inActiveColor) {
        maleBoxColor = activeColor;
        femaleBoxColor = inActiveColor;
      } else {
        maleBoxColor = inActiveColor;
        femaleBoxColor = activeColor;
      }
    } else {
      if (femaleBoxColor == inActiveColor) {
        femaleBoxColor = activeColor;
        maleBoxColor = inActiveColor;
      } else {
        maleBoxColor = activeColor;
        femaleBoxColor = inActiveColor;
      }
    }
    update();
  }
}
