import 'package:get/get.dart';

class CalculateController extends GetxController {
  // final weightController = WeightController();
  // final =);
  double heightValue = 20.0.ceilToDouble();
  double weightValue = 20.0.ceilToDouble();
  double bmiResult = 0.0.ceilToDouble();
  String textResult = "";

  bmiResultcalculate() {
   
      heightValue = (heightValue / 100);

      bmiResult = (weightValue / (heightValue * heightValue));
      if (bmiResult > 25) {
        textResult = "You're over weight";
      } else if (bmiResult >= 18 && bmiResult <= 25) {
        textResult = "Normal weight";
      } else {
        textResult = "You're under weight";
      
    }

    update();
  }

  changedHeightValue(newValue) {
    heightValue = newValue;
    update();
  }

  navigateToResult() {
    if (heightValue.isGreaterThan(50)) {
      bmiResultcalculate();
      Get.toNamed('/calculate');
    } else {
      Get.snackbar("Height is too Low",
          "The lowest height for the adults must be little high ${heightValue}",
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  valueWeightChanged(value) {
    weightValue = value;
    update();
  }

  navigateToHeight() {
    if (weightValue.isGreaterThan(10)) {
      Get.toNamed('/height');
    } else {
      Get.snackbar("Weight is too Low",
          "The lowest weight for the adults must be high ${weightValue}",
          snackPosition: SnackPosition.BOTTOM);
    }
  }
}
