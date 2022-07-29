



import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../screen_weight/screen_weight.dart';

class GenderScreen extends StatelessWidget {
  const GenderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //  appBar: AppBar(title: Text(""),),
    backgroundColor: Colors.teal.shade100,
      body: SafeArea(child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(height: 50,),
          const Text("GENDER",style:  TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold
          ),),
         // SizedBox(height: 00,),
         SizedBox(
           child: SfRadialGauge(
            axes:<RadialAxis> [
              RadialAxis(
                showLabels: false,
                showAxisLine: false,
                showTicks: false,
                maximum: 99,
                radiusFactor: 0.9,
                ranges: <GaugeRange>[
                GaugeRange(startValue: 20, endValue: 40,
                label: "Male",
                 startWidth: 0,
                endWidth: 10,
                sizeUnit:GaugeSizeUnit.factor,
                color: Colors.black12,),
                  GaugeRange(startValue: 40, endValue: 60,
                label: "Other",
                 startWidth: 0,
                endWidth: 10,
                sizeUnit:GaugeSizeUnit.factor ,
               color: Colors.cyan.shade300,
                ),
                GaugeRange(startValue: 60, endValue: 80,
                label: "Female",
                 color: Colors.blueGrey.shade400,
                
                   labelStyle: const GaugeTextStyle(
                    ),
                startWidth: 10,
                endWidth:0,
                sizeUnit: GaugeSizeUnit.factor,),],
                   pointers: const <GaugePointer>[
              NeedlePointer(
                  
                  value: 30,
                  needleLength: 0.7,
                  enableAnimation: true,
                  enableDragging: true,
                  knobStyle: KnobStyle(
                    knobRadius: 12,
                    sizeUnit: GaugeSizeUnit.logicalPixel,
                    
                  ))
            ],
            
            annotations:const<GaugeAnnotation> [
               GaugeAnnotation(widget:   Text("Male",style:  TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold)),
              positionFactor: 1,
              angle: 58,
              )

            ],
              
              )
              
            ],

           ),
         ),
        //  Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceAround,
        //   children: [
        //   SizedBox(width:70),
        //   Text("Male",style: TextStyle(
        //     fontSize: 18,
        //     fontWeight: FontWeight.bold))
        //  ],),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: [
            const SizedBox(width:70 ,),
             ElevatedButton(onPressed: (){
              Get.to(const WeightScreen());
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