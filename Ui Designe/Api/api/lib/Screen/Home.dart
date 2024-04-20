import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
 String? stringresponse;
 Map? mapresponse;
 Map? dataresponse;

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  
  Future<void> fetchdata() async {
 final response =   await http.get(Uri.parse("https://reqres.in/api/users/2"));
 if (response.statusCode == 200) {
    stringresponse = response.body;
    mapresponse = jsonDecode(stringresponse.toString());
    dataresponse = mapresponse!['data'];
 }else{
  Text("no data found");
 }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchdata();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: 250,

          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              
              CircleAvatar(
                maxRadius: 50,
                backgroundColor: Colors.amber,
                backgroundImage: NetworkImage(dataresponse!['avatar']),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(dataresponse!['id'].toString()),
              Text(dataresponse!['first_name'] ,style: TextStyle(fontSize: 24),),
              Text("Email : ${dataresponse!['email']}",style: TextStyle(fontSize: 24),),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}