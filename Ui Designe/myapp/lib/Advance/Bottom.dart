import 'package:flutter/material.dart';
import 'package:myapp/Revision/Gird_Screen1.dart';
import 'package:myapp/Screens/Gird_screen.dart';
import 'package:myapp/Screens/NewSample.dart';
import 'package:myapp/Screens/myhome2.dart';

class Bottom_Screen extends StatefulWidget {
  const Bottom_Screen({super.key});

  @override
  State<Bottom_Screen> createState() => _Bottom_ScreenState();
}

class _Bottom_ScreenState extends State<Bottom_Screen> {
  int _selectedindex = 0;
  List Page = [
      Grid_Screen(),
          Grid_Screen1(),
          NewSample(),
          myhome2()
  ];
  void onclick(int index){
    setState(() {
      _selectedindex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Page.elementAt(_selectedindex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedindex,
        onTap: onclick,

        backgroundColor: Colors.amber,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.pink,
        elevation: 10,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
      ]),
    );
  }
}