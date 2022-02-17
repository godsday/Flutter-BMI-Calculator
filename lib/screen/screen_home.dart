import 'package:flutter/material.dart';
import 'package:gmi_calculator/constants/app_const.dart';
import 'package:gmi_calculator/widgets/left_bar.dart';
import 'package:gmi_calculator/widgets/right_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _weightcontroller = TextEditingController();
  final _heightcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double _bmiResult = 0;
    String _textResult = "";

    return Scaffold(
        appBar: AppBar(
          title: Text(
            'BMI Calculator',
            style: TextStyle(
                color: accentHexColor,
                fontSize: 20,
                fontWeight: FontWeight.w500),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
        ),
        backgroundColor: mainHexcolor,
        body: SingleChildScrollView(
            child: Column(children: [
          const SizedBox(
            height: 40,
          ),

          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Container(
              width: 130,
              child: TextField(
                controller: _weightcontroller,
                keyboardType: TextInputType.number,
                style: TextStyle(
                    fontSize: 32,
                    color: accentHexColor,
                    fontWeight: FontWeight.w300),
                decoration: const InputDecoration(
                    hintText: 'Weight',
                    border: InputBorder.none,
                    hintStyle: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w300,
                        color: Colors.white)),
              ),
            ),
            Container(
              width: 130,
              child: TextField(
                controller: _heightcontroller,
                keyboardType: TextInputType.number,
                style: TextStyle(
                    fontSize: 32,
                    color: accentHexColor,
                    fontWeight: FontWeight.w300),
                decoration: const InputDecoration(
                    hintText: 'Height',
                    border: InputBorder.none,
                    hintStyle: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w300,
                        color: Colors.white)),
              ),
            ),
          ]),

          const SizedBox(
            height: 40,
          ),
          // ignore: avoid_unnecessary_containers
           GestureDetector(
            onTap: () {
              double _h = double.parse(_heightcontroller.text);
              double _w = double.parse(_weightcontroller.text);
              setState(() {
                print('object');
                _bmiResult = (_w / (_h * _h));
                if (_bmiResult > 20) {
                  _textResult = "You\'re over weight";
                } else if (_bmiResult >= 18 && _bmiResult <= 25) {
                  _textResult = "Normal weight";
                } else {
                  _textResult = "You\'re under weight";
                }
              });
             },
             child: Container(
                child: Text(
              'Calculate',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: accentHexColor),
            ),
          
            ),
           ),
          
          const SizedBox(
            height: 30,
          ),
          Container(
            child: Text(
              _bmiResult.toStringAsFixed(2),
              style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: accentHexColor),
            ),
          ),
          const SizedBox(
            height: 30,
          ),

          Visibility(
            visible: _textResult.isNotEmpty,
            child: Container(
              child: Text(
                _textResult,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                    color: accentHexColor),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const LeftBar(barwidth: 40),
          const SizedBox(
            height: 20,
          ),
          const LeftBar(barwidth: 100),
          const RightBar(barwidth: 40),
          const SizedBox(
            height: 20,
          ),
          const LeftBar(barwidth: 60),
          const SizedBox(
            height: 30,
          ),
          const RightBar(barwidth: 150)
        ],),),);
  }
}
