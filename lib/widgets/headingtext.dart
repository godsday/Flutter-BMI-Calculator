import 'package:flutter/material.dart';

class HeadingText extends StatelessWidget {
  final String heading;
  const HeadingText({Key? key, required this.heading}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      heading,
      style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    );
  }
}
