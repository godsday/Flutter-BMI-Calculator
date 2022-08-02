import 'package:get/get.dart';

class HeightController extends GetxController{

double heightValue=0.0.ceilToDouble();
changedValue(newValue){
  heightValue=newValue;
  update();
}

//    final weightController = WeightController();
// double bmiResult=0;
//   bmiCalcuiate(){
// bmiResult = weightController.changedValue/(heightValue*heightValue) ;
    
//   }
}





