import 'package:flutter/material.dart';
import 'package:todo/Models/Note_Models.dart';

class NoteWidget extends StatelessWidget {
  final Note? note;
  final VoidCallback onTap;
  final VoidCallback onLongPress;
   NoteWidget({super.key,required this.note,required this.onTap,required this.onLongPress, required int index});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: onTap,
      onLongPress: onLongPress,
    child: Card(
      child: Column(
        children: [
          Text(note!.title,style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
          Divider(
            thickness: 2,
            color: Colors.black,
          ),
          Text(note!.description,style: TextStyle(
            fontSize: 20,fontWeight: FontWeight.w400
          ),)
        ],
      ),
    ),
    );
  }
}