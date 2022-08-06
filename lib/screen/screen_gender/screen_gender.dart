import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:gmi_calculator/screen/screen_gender/gender_controller.dart';
import 'package:gmi_calculator/widgets/headingtext.dart';
import 'widget/agebutton_widget.dart';
import 'widget/containerbox_widget.dart';

class GenderScreen extends StatelessWidget {
  GenderScreen({Key? key}) : super(key: key);

  final genderController = Get.put(GenderController());

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              width: width - 15,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.lightBlue.withOpacity(0.3),
                        spreadRadius: 1.5,
                        blurRadius: 0.3,
                        offset: const Offset(0, 3))
                  ]),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(18.0),
                        child: HeadingText(heading: "Gender"),
                      ),
                    ],
                  ),
                  GetBuilder<GenderController>(builder: (context) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                            onTap: () {
                              genderController.updateBoxColor(1);
                            },
                            child: ContainerBox(
                              image: "assets/animation/lf20_ltdnyedu.json",
                              boxColor: genderController.maleBoxColor,
                              gender: "Male",
                            )),
                        GestureDetector(
                            onTap: () {
                              genderController.updateBoxColor(2);
                            },
                            child: ContainerBox(
                              image: "assets/animation/lf20_oorbm6np.json",
                              boxColor: genderController.femaleBoxColor,
                              gender: "Female",
                            )),
                      ],
                    );
                  }),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              width: width - 20,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.blueGrey.withOpacity(0.3),
                        spreadRadius: 1.5,
                        blurRadius: 0.3,
                        offset: const Offset(0, 3))
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(18.0),
                        child: HeadingText(heading: "Age"),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height / 4.7,
                    width: width,
                    child: GetBuilder<GenderController>(builder: (context) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                              width: width - 20,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 125.0),
                                child: TextField(
                                  controller: genderController.ageController,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(3),
                                  ],
                                  keyboardType: TextInputType.number,
                                  decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Enter Age Here",
                                      hintStyle: TextStyle(fontSize: 17)),
                                  style: const TextStyle(
                                      fontSize: 95,
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                        ],
                      );
                    }),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      AgeButtons(icons: Icons.minimize, index: 0),
                      AgeButtons(icons: Icons.add, index: 1),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(
                  width: 205,
                ),
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
      ),
    );
  }
}
