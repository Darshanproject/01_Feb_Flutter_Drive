import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:todo/Screen/Notes.dart';

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
    Timer(Duration(seconds: 6), ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=>NotesScreen())));
  }
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        child: Center(child: Lottie.asset("Assets/splash.json")),
      ),
    );
  }
}