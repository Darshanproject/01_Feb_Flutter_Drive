

import 'package:flutter/material.dart';

class List_Sample1 extends StatefulWidget {
  const List_Sample1({super.key});

  @override
  State<List_Sample1> createState() => _List_Sample1State();
}

class _List_Sample1State extends State<List_Sample1> {
  final List name = ["a","b","c","d","e","f","g","h","i","j","k","l","m",1,2,3,4,5,6,7,8,9];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: name.length,
        itemBuilder: (cxt , int ind){
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Items(name: name[ind], index: ind)));
          },
          child: Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("${name[ind]}"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("${ind}"),
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}




/*
ListTile(
          title: Text("Items ${name[ind]}"),
          leading: Icon(Icons.arrow_circle_right_rounded),
          subtitle: Text("index"),
        );


 */




class Items extends StatelessWidget {
  var name;
  final int index;
   Items({super.key,required this.name,required this.index});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: Colors.amber,
            height: 250,
            width: 250,
            child: Column(
              children: [
                Text("$name"),
                Text("$index")
              ],
            ),
          )
        ],
      ),
    );
  }
}