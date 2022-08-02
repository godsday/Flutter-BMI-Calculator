import 'package:get/get.dart';
import 'package:gmi_calculator/screen/screen_height/height_controller.dart';
import 'package:gmi_calculator/screen/screen_weights/weights_controller.dart';

class CalculateController extends GetxController{
    final weightController =Get.put( WeightController());
        final heightController =Get.put( HeightController());

        
double bmiResult=0.0.ceilToDouble();
  bmiResultcalculate(){
    print(weightController.changedValue+heightController.heightValue);
    heightController.heightValue=(heightController.heightValue/100);
bmiResult = (weightController.changedValue/(heightController.heightValue*heightController.heightValue));
    update();
  }
}