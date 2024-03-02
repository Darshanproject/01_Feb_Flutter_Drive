import 'package:flutter/material.dart';

class Grid_Screen1 extends StatefulWidget {
  const Grid_Screen1({super.key});

  @override
  State<Grid_Screen1> createState() => _Grid_Screen1State();
}

class _Grid_Screen1State extends State<Grid_Screen1> {
  final List name= [1,2,3,4,5,6,7,8,9,10];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: name.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 12,crossAxisSpacing: 10), itemBuilder: (ctx ,int ind){
        return Card(
          child: Text("${name[ind]}"),
        );
      }),
    );
  }
}