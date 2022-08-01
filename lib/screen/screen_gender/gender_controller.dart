import 'package:get/get.dart';

class GenderController extends GetxController{
  int age=0;
  
  increment(){
    age++;
    update();
  }
  decrement(){
    age--;
  }
  changingAge(controller){
    controller=age;
    update();

  }
}