// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:gmi_calculator/screen/screen_gender/gender_controller.dart';

class GenderScreen extends StatefulWidget {
   GenderScreen({Key? key}) : super(key: key);

  @override
  State<GenderScreen> createState() => _GenderScreenState();
}

class _GenderScreenState extends State<GenderScreen> {
  final ageController = TextEditingController();

  final genderController =Get.put(GenderController());
@override
  void initState() {
    // TODO: implement initState
    //genderController.changingAge(ageController);
    
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
         
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  ClipOval(
                      child: Container(
                          width: 150,
                          child: Image.asset(
                            "assets/images/men.jpg",
                            fit: BoxFit.fill,
                          ))),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Male",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  )
                ],
              ),
              Column(
                children: [
                  ClipOval(
                      child: Container(
                          width: 140,
                          child: Image.asset(
                            "assets/images/female.jpg",
                            fit: BoxFit.fill,
                          ))),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Female",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16))
                ],
              ),
            ],
          ),
          SizedBox(
            height: 200,
            width: 200,
            child: GetBuilder<GenderController>(
              builder: (context) {
                return Card(
                  color: Colors.cyan,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 30,
                        child: TextField(
                          controller: ageController,
                           inputFormatters: [
                                    LengthLimitingTextInputFormatter(3),
                                  ],
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            
                            hintText: "Age"
                          ),
                          style: TextStyle(
                            
                          ),

                        )),
                        
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          
                          Container(
                            width: 50,
                            height: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey
                              
                            ),
                            child: IconButton(onPressed: (){
                              genderController.decrement();
                            }, icon: Icon(Icons.minimize))),
                          Container(
                            width: 50,
                            height: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey
                              
                            ),
                            child: IconButton(onPressed: (){
                              genderController.increment();
                            }, icon: Icon(Icons.add)))
                        ],
                      )
                    ],
                  ),
                );
              }
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.toNamed('/weight');
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
