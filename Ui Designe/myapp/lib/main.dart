import 'package:flutter/material.dart';
import 'package:myapp/Revision/List.dart';
import 'package:myapp/Revision/List1.dart';
import 'package:myapp/Revision/Sample.dart';
import 'package:myapp/Revision/Sample1.dart';
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
      debugShowCheckedModeBanner: false,
      home: List_Sample1(),
    );
  }
}
