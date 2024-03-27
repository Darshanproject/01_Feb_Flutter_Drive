import 'package:flutter/material.dart';

class List_Divider extends StatefulWidget {
  const List_Divider({super.key});

  @override
  State<List_Divider> createState() => _List_DividerState();
}

class _List_DividerState extends State<List_Divider> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (cxt,int ind){
          return ListTile(
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("$ind",style: TextStyle(
                      fontSize: 24
                    ),),
                    Divider(
                      thickness: 5,
                      color: Colors.red,     
                    )
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}