  import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:myapp/Screen/Auth/Login.dart';
import 'package:myapp/Screen/Splash%20Screen/Splash_Screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash_Screen(),
    );
  }
}