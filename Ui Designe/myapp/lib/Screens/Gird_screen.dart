import 'package:flutter/material.dart';

class Grid_Screen extends StatefulWidget {
  const Grid_Screen({super.key});

  @override
  State<Grid_Screen> createState() => _Grid_ScreenState();
}

class _Grid_ScreenState extends State<Grid_Screen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          Card(
            child: Text("1"),
          ),
          Card(
            child: Text("2"),
          ),
          Card(
            child: Text("3"),
          ),
          Card(
            child: Text("4"),
          ),
        ],
        ),
    );
  }
}