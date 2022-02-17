import 'package:flutter/material.dart';
import 'package:gmi_calculator/constants/app_const.dart';
import 'package:gmi_calculator/screen/screen_home.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _navigatetoHome();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: mainHexcolor,
      child: const Center(
        child: Text(
          'B M I',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }

  Future<void> _navigatetoHome() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const HomeScreen()));
  }
}
