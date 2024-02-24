import 'package:flutter/material.dart';
import 'package:myapp/Screens/List1.dart';
import 'package:myapp/Screens/Myhome.dart';
import 'package:myapp/Screens/TextField_Screen.dart';
import 'package:myapp/Screens/myhome2.dart';


void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Text_Fields_file(),
    );
  }
}
