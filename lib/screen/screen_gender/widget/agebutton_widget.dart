import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gmi_calculator/screen/screen_gender/gender_controller.dart';

class AgeButtons extends StatelessWidget {
  final IconData icons;
  final int index;
  final genderController = Get.put(GenderController());
  AgeButtons({
    Key? key,
    required this.icons,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 80,
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(20),
            color: Colors.lightBlue.shade200),
        child: IconButton(
            onPressed: () {
              genderController.agebuttonControl(index);
            },
            icon: Icon(
              icons,
              size: 28,
            )));
  }
}