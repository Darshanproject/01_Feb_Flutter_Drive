import 'package:flutter/material.dart';
import 'package:todo/Models/Note_Models.dart';

class NoteWidget extends StatelessWidget {
  final Note? note;
  final VoidCallback onTap;
  final VoidCallback onLongPress;
   NoteWidget({super.key,required this.note,required this.onTap,required this.onLongPress});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: onTap,
      onLongPress: onLongPress,
    child: Card(
      
    ),
    );
  }
}