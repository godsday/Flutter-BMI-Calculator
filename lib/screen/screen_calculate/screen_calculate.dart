

// ignore_for_file: prefer_const_constructors



import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gmi_calculator/screen/screen_calculate/calculate_controller.dart';

class CalculateScreen extends StatelessWidget {
   CalculateScreen({Key? key}) : super(key: key);
  final calculateController = Get.put(CalculateController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade200,
        elevation: 0,
      ),
      body: SafeArea(child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          //  SizedBox(height: 10,),
            Text("Your summary",style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black

            ),),
            Container(
              width: 200,
              height: 200,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.brown.shade200,
              ),
              child: GetBuilder<CalculateController>(
                builder: (context) {
                  return Text("${calculateController.bmiResult.toStringAsFixed(2)}",style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),);
                }
              ),
            ),
            Text(calculateController.textResult,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28)),
             Container(
                              width: 50,
                              height: 50,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey
                                
                              ),
                              child: IconButton(onPressed: (){
                   Get.offAllNamed('/gender');
                     
                              }, icon: Icon(Icons.replay_outlined))),
                           SizedBox(height: 10,)
          ],
        ),
      )),
    );
    
  }
}