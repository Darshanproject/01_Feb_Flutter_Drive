import 'package:flutter/material.dart';
import 'package:myapp/Revision/Gird_Screen1.dart';
import 'package:myapp/Screens/Gird_screen.dart';
import 'package:myapp/Screens/NewSample.dart';

class Tab_Screen extends StatefulWidget {
  const Tab_Screen({super.key});

  @override
  State<Tab_Screen> createState() => _Tab_ScreenState();
}

class _Tab_ScreenState extends State<Tab_Screen> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tab Bar"),
          bottom: TabBar(tabs: [
            Tab(icon: Icon(Icons.home),text: "Home",),
            Tab(icon: Icon(Icons.home),text: "Home",),
            Tab(icon: Icon(Icons.home),text: "Home",),
          ]),
        ),
        body: TabBarView(children: [
          // Text("This is your home Screen"),
          // Text("This is your second Screen"),
          // Text("This is your third screen")
          Grid_Screen(),
          Grid_Screen1(),
          NewSample()
        ]),
      ),      
    );
  }
}