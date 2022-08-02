import 'package:get/get.dart';

class WeightController extends GetxController{

  double changedValue =20.0.ceilToDouble();

  valueChanged(value){
    changedValue=value;
    update();
  }

}