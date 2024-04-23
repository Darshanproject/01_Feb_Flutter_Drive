import 'package:api/Crud/Insert.dart';
import 'package:flutter/material.dart';

class View_Screen extends StatefulWidget {
  const View_Screen({super.key});

  @override
  State<View_Screen> createState() => _View_ScreenState();
}

class _View_ScreenState extends State<View_Screen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Insert_Screen()));
      },child: Icon(Icons.add,size: 24,),),
    );
  }
}