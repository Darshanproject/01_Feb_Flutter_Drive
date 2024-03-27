import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myapp/Const/export.dart';
import 'package:myapp/Coustom%20widgets/Back_Screen.dart';
import 'package:myapp/Screen/Auth/Login.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () =>Get.offAll(()=>Login()));
  }
  Widget build(BuildContext context) {
    return  Back_screen(
      child:  Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Container(
            child: Stack(
              children: [
               
                  Positioned.fill(child: Container(
                    height: 350,
                    width: 250,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage("https://media.istockphoto.com/id/173894164/photo/heap-of-money.webp?b=1&s=170667a&w=0&k=20&c=8xVHYsrEBssOV7Cn8gj8-rpaeJdna9g06J6dtG4_KXQ="),fit: BoxFit.cover)
                    ),
                  )),
                   Positioned(
                  right: -30,
                  child: CircleAvatar(
                    minRadius: 35,
                    backgroundColor: Colors.amber,
                  )),
              ],
            ),
          ),
        )
      ).box.height(context.screenHeight / 1.7).color(Colors.transparent).makeCentered(),
    );
  }
}