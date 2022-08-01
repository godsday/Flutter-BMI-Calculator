

// ignore_for_file: prefer_const_constructors

import 'dart:html';

import 'package:flutter/material.dart';

class CalculateScreen extends StatelessWidget {
  const CalculateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade200,
        elevation: 0,
      ),
      body: SafeArea(child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("Your summary",style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black

          ),),
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.brown.shade200,
            ),
          ),
           Container(
                            width: 50,
                            height: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey
                              
                            ),
                            child: IconButton(onPressed: (){
                             
                            }, icon: Icon(Icons.replay_outlined))),

        ],
      )),
    );
    
  }
}