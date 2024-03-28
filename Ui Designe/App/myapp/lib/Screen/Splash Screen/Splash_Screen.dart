import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
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
            child: Container(
              child: Lottie.asset("assets/splash.json"),
            ).box.makeCentered()
          ),
        )
      ).box.height(context.screenHeight / 1.7).color(Colors.transparent).makeCentered(),
    );
  }
}