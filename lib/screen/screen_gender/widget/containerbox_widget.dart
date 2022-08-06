import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ContainerBox extends StatelessWidget {
  final String image;
  final Color boxColor;
  final String gender;
  const ContainerBox(
      {Key? key,
      required this.image,
      required this.boxColor,
      required this.gender})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Column(
      children: [
        Container(
          width: width / 2.5,
          height: height / 3.5,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: boxColor.withOpacity(0.3),
                    spreadRadius: 1.5,
                    blurRadius: 0.3,
                    offset: const Offset(0, 3))
              ]),
          child: Column(
            children: [
              SizedBox(
                width: width / 2.5,
                height: height / 4.5,
                child: Lottie.asset(
                  image,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(gender,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16))
            ],
          ),
        ),
      ],
    );
  }
}
