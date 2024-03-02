import 'dart:math';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Colors_change(),
    );
  }
}

class Colors_change extends StatefulWidget {
  const Colors_change({super.key});

  @override
  State<Colors_change> createState() => _Colors_changeState();
}

class _Colors_changeState extends State<Colors_change> {
  Random _random =Random();
   Color color_ = Colors.amber;
  void colorChnaging(){
    setState(() {
      color_ = Color.fromARGB(_random.nextInt(255), _random.nextInt(255), _random.nextInt(255), _random.nextInt(255));
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: InkWell(
        onTap: colorChnaging,
        child: Container(
          color: color_,
        ),
      ),
    );
  }
}