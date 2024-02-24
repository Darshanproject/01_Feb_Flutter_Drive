import 'package:flutter/material.dart';

class Home_Page extends StatelessWidget {
  var name;
   Home_Page({super.key,required this.name});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text("Hello $name Welcome to facebook",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
          )
        ],
      ),
    );
  }
}