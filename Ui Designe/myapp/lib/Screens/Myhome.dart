import 'package:flutter/material.dart';

class Myhome extends StatefulWidget {
  const Myhome({super.key});

  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      //this is your main conatiner 
      body: SingleChildScrollView(
        ///this is used for giving scrolling 
        child: Container(
          //this is your main column
          child: Column(
            ///here you can add more containers here 
            children: [
              Container(
                ///margin is used for putting container away
                margin: EdgeInsets.all(12),
                ///this is used for putting container
                padding: EdgeInsets.all(12),
                ///this is your decoration section
                decoration: BoxDecoration(
                  border: Border.all( //this is used for border
                    width: 2, //this is your border of subcontainer  
                    color: Colors.black  //this is your border color 
                  ),
                  borderRadius: BorderRadius.circular(12),//this is your radius 
                ),
                child: Row( //this is your row which is used for inner container
                  children: [
                    ///this is your One sub container 1
                    Container(
                      height: 80,
                      width: 80,
                      color: Colors.pink,
                    ),
                    ///this is used for getting space between 2 conatiner
                    SizedBox(
                      width: 10,
                    ),
                    ///this is your second Sub conatiner
                    Container(
                      height: 80,
                      width: 80,
                      color: Colors.pink,
                    ),
                      ///this is used for getting space between 2 conatiner
                    SizedBox(
                      width: 10,
                    ),
                    ///this is your three sub container 
                    Container(
                      color: Colors.yellow,
                      height: 80,
                      width: 80,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}