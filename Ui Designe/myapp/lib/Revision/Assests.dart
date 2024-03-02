import 'package:flutter/material.dart';

class Assets_Img extends StatelessWidget {
  const Assets_Img({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/1.jpeg"))
        ),
      ),
    );
  }
}