

import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:api/Crud/View.dart';
import 'package:flutter/material.dart';

class Insert_Screen extends StatefulWidget {
  const Insert_Screen({super.key});

  @override
  State<Insert_Screen> createState() => _Insert_ScreenState();
}

class _Insert_ScreenState extends State<Insert_Screen> {
  final _fromkey = GlobalKey<FormState>();
  Future adddata()async{
      final response = await http.post(Uri.parse("https://database20810.000webhostapp.com/FlutterCrude/insert.php"),body: {
        'name':name.text,
        'surname':surname.text,
        'email':email.text,
        'password':password.text
      });
  }
  TextEditingController name = TextEditingController();
  TextEditingController surname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password  = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: Form(
          key: _fromkey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
                    children: [
              TextFormField(
                controller: name,
                validator: (value) {
                  if (value != null && value.isEmpty) {
                    return 'Please enter this field';
                  }else{
                    return null;
                  }
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)
                  ),
                  hintText: "Name",
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                validator: (value) {
                  if (value != null && value.isEmpty) {
                    return 'Please enter this field';
                  }else{
                    return null;
                  }
                },
                controller: surname,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)
                  ),
                  hintText: "Surname",
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                validator: (value) {
                  if (value != null && value.isEmpty) {
                    return 'Please enter this field';
                  }else{
                    return null;
                  }
                },
                controller: email,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)
                  ),
                  hintText: "Email",
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
              SizedBox(height: 10,),
              TextFormField(
                validator: (value) {
                  if (value != null && value.isEmpty) {
                    return 'Please enter this field';
                  }else{
                    return null;
                  }
                },
                controller: password,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)
                  ),
                  hintText: "Password",
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
              SizedBox(height: 50,),
              ElevatedButton(onPressed: (){
                if (_fromkey.currentState!.validate()) {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=>View_Screen()));
                  adddata();
                }
              }, child: Text("Add data"))
                    ],
                  ),
          ))),
    );
  }
}