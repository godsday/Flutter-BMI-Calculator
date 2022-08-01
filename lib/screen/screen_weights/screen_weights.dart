



import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gmi_calculator/screen/screen_weights/weights_controller.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';


class WeightsScreen extends StatefulWidget {
  const WeightsScreen({Key? key}) : super(key: key);

  @override
  State<WeightsScreen> createState() => _WeightsScreenState();
}


class _WeightsScreenState extends State<WeightsScreen> {
  //RxDouble gender = 30.0.obs;

  final weightController =Get.put(WeightController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //  appBar: AppBar(title: Text(""),),
    backgroundColor: Colors.teal.shade100,
      body: SafeArea(child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(height: 50,),
          // const Text("GENDER",style:  TextStyle(
          //   fontSize: 30,
          //   fontWeight: FontWeight.bold
          // ),),
         // SizedBox(height: 00,),
         GetBuilder<WeightController>(
           builder: (context) {
             return SfRadialGauge(
             axes:<RadialAxis> [
               RadialAxis(
                 showLabels: true,
                 showAxisLine: true,
                 showTicks: true,
                 maximum: 150,
                 radiusFactor: 0.9,
                 ranges: <GaugeRange>[
                 GaugeRange(startValue: 20, endValue: 40,
                 
                  startWidth: 0,
                 endWidth: 10,
                 sizeUnit:GaugeSizeUnit.factor,
                 color: Colors.black12,),
                   GaugeRange(startValue: 40, endValue: 60,
                
                  startWidth: 0,
                 endWidth: 10,
                 sizeUnit:GaugeSizeUnit.factor ,
                color: Colors.cyan.shade300.withOpacity(0.4),
                 ),
                 GaugeRange(startValue: 60, endValue: 80,
                 
                  color: Colors.blueGrey.shade400.withOpacity(0.5),
                 
                    labelStyle: const GaugeTextStyle(
                     ),
                 startWidth: 10,
                 endWidth:0,
                 sizeUnit: GaugeSizeUnit.factor,),],
                    pointers:<GaugePointer>[
               NeedlePointer(
                   
                   value: weightController.changedValue,
                   onValueChanged: (newValue){
                     weightController.valueChanged(newValue);
                      // gender=newValue.obs;

                     
                   },
                   
                   needleLength: 0.7,
                   enableAnimation: true,
                   enableDragging: true,
                   knobStyle: KnobStyle(
                     knobRadius: 12,
                     sizeUnit: GaugeSizeUnit.logicalPixel,
                     
                   ))
             ],
             
             annotations:<GaugeAnnotation> [
                GaugeAnnotation(widget:  weightController.changedValue>=20&&weightController.changedValue<40? 
                Text('MALE',style:  TextStyle(
             fontSize: 18,
             fontWeight: FontWeight.bold)):weightController.changedValue>40&&weightController.changedValue<60?Text('Other',style:  TextStyle(
             fontSize: 18,
             fontWeight: FontWeight.bold)):Text("female"),

               positionFactor: 1,
               angle: 58,
               )
               
             ],
               
               )
               
             ],
               
                 
               
             
               );
           }
         ),
        
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: [
           ElevatedButton(
                  onPressed: () {
                    Get.back();
                  },
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(50, 50),
                      elevation: 5,
                      primary: Colors.lime,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black54,
                  )),
             ElevatedButton(onPressed: (){
              Get.toNamed('/height');
             },
             style: ElevatedButton.styleFrom(fixedSize: const Size(150, 50),elevation: 5,primary: Colors.amber,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
              child: const Text("Next",style:  TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold))),
           ],
         )

        ],
      )),
    );
    
  }
}
