//     double _bmiResult = 0;
//         String _textResult = "";

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   final _heightcontroller = TextEditingController();

//   @override
//   Widget build(BuildContext context) {

//     return Scaffold(
//         appBar: AppBar(
//           title: Text(
//             'BMI',
//             style: TextStyle(
//                 color: accentHexColor,
//                 fontSize: 20,
//                 fontWeight: FontWeight.w500),
//           ),
//           backgroundColor: Colors.transparent,
//           elevation: 0,
//           centerTitle: true,
//         ),
//         backgroundColor: mainHexcolor,

//         body: SingleChildScrollView(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [

//           SizedBox(
//             width: 130,
//             child: TextField(
//               controller: _heightcontroller,
//               keyboardType: TextInputType.number,
//               style: TextStyle(
//                   fontSize: 32,
//                   color: accentHexColor,
//                   fontWeight: FontWeight.w300),
//               decoration: const InputDecoration(
//                   hintText: 'Height',
//                   border: InputBorder.none,
//                   hintStyle: TextStyle(
//                       fontSize: 32,
//                       fontWeight: FontWeight.w300,
//                       color: Colors.white)),
//             ),
//           ),

//           const SizedBox(
//             height: 40,
//           ),
//           // ignore: avoid_unnecessary_containers
//            GestureDetector(
//             onTap: () {
//               double _h = double.parse(_heightcontroller.text);
//               double _w = double.parse(_weightcontroller.text);
//               setState(() {

//                 _bmiResult = (_w / (_h * _h));
//                 if (_bmiResult > 25) {
//                   _textResult = "You're over weight";
//                 } else if (_bmiResult >= 18 && _bmiResult <= 25) {
//                   _textResult = "Normal weight";
//                 } else {
//                   _textResult = "You're under weight";
//                 }

//               });
//              },
//              child: SizedBox(
//                 child: Text(
//               'Calculate',
//               style: TextStyle(
//                   fontSize: 30,
//                   fontWeight: FontWeight.bold,
//                   color: accentHexColor),
//             ),

//             ),
//            ),

//           const SizedBox(
//             height: 30,
//           ),
//           SizedBox(

//             child: Text(

//               _bmiResult.toStringAsFixed(2),
//               style: TextStyle(
//                   fontSize: 60,
//                   fontWeight: FontWeight.bold,
//                   color: accentHexColor),
//             ),
//           ),
//           const SizedBox(
//             height: 30,
//           ),

//           Visibility(
//             visible: _textResult.isNotEmpty,
//             child: SizedBox(
//               child: Text(
//                 _textResult,
//                 style: TextStyle(
//                     fontSize: 30,
//                     fontWeight: FontWeight.w400,
//                     color: accentHexColor),
//               ),
//             ),
//           ),
//           const SizedBox(
//             height: 50,
//           ),

//         ],),),);
//   }
// }

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gmi_calculator/screen/screen_height/height_controller.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class HeightScreen extends StatefulWidget {
  HeightScreen({Key? key}) : super(key: key);

  @override
  State<HeightScreen> createState() => _HeightScreenState();
}

class _HeightScreenState extends State<HeightScreen> {
  final heightController = Get.put(HeightController());
//double height =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //   appBar: AppBar(),
      backgroundColor: Colors.blue.shade100,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
          ),
          Text(
            "HEIGHT",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),

          SizedBox(
            height: 50,
          ),
          GetBuilder<HeightController>(
            builder: (context) {
              return SfLinearGauge(
                orientation: LinearGaugeOrientation.vertical,
                maximum: 200,
                tickPosition: LinearElementPosition.outside,
                labelPosition: LinearLabelPosition.outside,
                minorTicksPerInterval: 20,
                majorTickStyle: LinearTickStyle(
                    length: 10, thickness: 2, color: Colors.black45),
                markerPointers: <LinearMarkerPointer>[
                  LinearShapePointer(
                    value: heightController.heightValue,
                    onChanged: (newValue){
                     heightController.changedValue(newValue);
                       
                      
                      
                      
                    },
                  ),
                ],
                //  onGenerateLabels: (){

                //   return <LinearAxisLabel>[
                //    LinearAxisLabel(text: "10 cm", value: 10)
                //   ];

                //  },
              );
            }
          ),

          // child: TextField(
          //   controller: _weightcontroller,
          //   keyboardType: TextInputType.number,
          //   style: TextStyle(
          //       fontSize: 32,
          //       color: accentHexColor,
          //       fontWeight: FontWeight.w300),
          //   decoration: const InputDecoration(
          //       hintText: 'Weight',
          //       border: InputBorder.none,
          //       hintStyle: TextStyle(
          //           fontSize: 32,
          //           fontWeight: FontWeight.w300,
          //           color: Colors.white)),
          // ),
          SizedBox(
            height: 90,
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
              ElevatedButton(
                  onPressed: () {
                    Get.toNamed('/calculate');
                  },
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(150, 50),
                      elevation: 5,
                      primary: Colors.amber,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                  child: const Text("Next",
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold))),
            ],
          )
        ],
      )),
    );
  }
}
