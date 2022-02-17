import 'package:flutter/material.dart';
import 'package:gmi_calculator/constants/app_const.dart';

class LeftBar extends StatelessWidget {
  

final double barwidth;

  const LeftBar({Key? key,required this.barwidth}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 20,
          width: barwidth,
          
          decoration: BoxDecoration(
            color: accentHexColor,
            borderRadius:const BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10)
            )
            
          ),
        )
      ],
      
    );
  }
}