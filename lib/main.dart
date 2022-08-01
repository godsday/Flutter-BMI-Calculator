
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gmi_calculator/screen/screen_calculate/screen_calculate.dart';
import 'package:gmi_calculator/screen/screen_gender/screen_gender.dart';
import 'package:gmi_calculator/screen/screen_height/screen_height.dart';

import 'package:gmi_calculator/screen/screen_splash.dart';
import 'package:gmi_calculator/screen/screen_weights/screen_weights.dart';

void main(List<String> args) {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    return  GetMaterialApp(
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.blueGrey),
    
      getPages: [
        GetPage(name: '/', page: ()=>const MyApp()),
        GetPage(name: '/splash', page: ()=>const SplashScreen()),
        GetPage(name: '/gender', page: ()=> GenderScreen()),
                GetPage(name: '/weight', page: ()=>const WeightsScreen()),
                        GetPage(name: '/height', page: ()=> HeightScreen()),
                                GetPage(name: '/calculate', page: ()=>const CalculateScreen()),

 

        
      ],
       home:const  SplashScreen(),

      
    );
  }
}