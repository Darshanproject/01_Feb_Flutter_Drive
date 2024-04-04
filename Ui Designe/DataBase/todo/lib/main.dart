import 'package:flutter/material.dart';
import 'package:todo/Screen/Notes.dart';
import 'package:todo/Splash/SplashScreen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash_Screen(),
    );
  }
}