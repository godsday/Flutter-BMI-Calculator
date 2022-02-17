import 'package:flutter/material.dart';
import 'package:gmi_calculator/constants/app_const.dart';

class RightBar extends StatelessWidget {

  final double barwidth;

  const RightBar({Key? key,required this.barwidth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,

      children: [
        Container(
          height: 20,
          width: barwidth,
          decoration: BoxDecoration(
            color: accentHexColor,
            borderRadius:const BorderRadius.only(
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10)
            )
            
          ),
        )
      ],
      
    );
  }
}