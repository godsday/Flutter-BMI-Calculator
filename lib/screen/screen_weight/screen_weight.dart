import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gmi_calculator/screen/screen_height/screen_height.dart';


class WeightScreen extends StatelessWidget {
  const WeightScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body:SafeArea(child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
        const SizedBox(height: 50,),
          const Text("WEIGHT",style:  TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold
          ),),
         SizedBox(height: 50,),

         ClipPath(
          clipper: SeaWaveClipper(),
           child: Container(
           
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                Colors.white,Colors.black38,
                
              ])
              
            ),
           ),
         ),

       Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: [

           ElevatedButton(onPressed: (){
            Get.back();
           },
           style: ElevatedButton.styleFrom(fixedSize: const Size(50, 50),elevation: 5,primary: Colors.lime ,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
            child:Icon( Icons.arrow_back_ios,color: Colors.black54,)),
           ElevatedButton(onPressed: (){
              Get.to(()=> HeightScreen());
             },
             style: ElevatedButton.styleFrom(fixedSize: const Size(150, 50),elevation: 5,primary: Colors.amber,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
              child: const Text("Next",style:  TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold))),
         ],
       )
      ],)) ,
    );
    
  }
}
class SeaWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
       // path.lineTo(2, 10);
    path.moveTo(30, 0);
    //path.moveTo(size.width,0);

    path.lineTo(0, size.height-50);
    path.quadraticBezierTo(0, size.height, 50, size.height);
    //var firststart = Offset(size.width,0 );
    //var firstend = Offset(0 , size.height - 35.0);
   // path.quadraticBezierTo(
     //   firststart.dx, firststart.dy, firstend.dx, firstend.dy);
    //path.lineTo(size.width/2.25, size.height);
   //// var secondstart =
      //  Offset(size.width - (size.width / 6.29), size.height - 50.0);
    //var secondend = Offset(size.width, size.height - 4);
    // path.quadraticBezierTo(
    //     secondstart.dx, secondstart.dy, secondend.dx, secondend.dy);
    path.lineTo(size.width-50, size.height);
    path.quadraticBezierTo(size.width-0, size.height, size.width, size.height-50);
    path.quadraticBezierTo(size.width, 0, size.width-150, 10);

    path.lineTo(20, 25);
    //path.l
  path.quadraticBezierTo(size.width, size.height,size.width, size.height-50);


    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }}