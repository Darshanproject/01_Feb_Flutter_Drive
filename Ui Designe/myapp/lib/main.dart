import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("MY First app"),
          backgroundColor: Colors.blue,
          elevation: 10,
        ),
        body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          color: Colors.blue[300],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                color: Colors.red,
                height: 150,
                width: 150,
              ),
              Container(
                color: Colors.yellow,
                height: 150,
                width: 150,
              ),
              Container(
                color: Colors.green,
                height: 150,
                width: 150,
              )
            ],
          ),
        )
      ),
    );
  }
}