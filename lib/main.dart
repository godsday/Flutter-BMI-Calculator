
import 'package:flutter/material.dart';

import 'package:gmi_calculator/screen/screen_splash.dart';

void main(List<String> args) {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home:  SplashScreen(),
      
      
    );
  }
}