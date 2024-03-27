// ignore: file_names
import 'package:flutter/material.dart';


class NewSample extends StatefulWidget {
  const NewSample({super.key});

  @override
  State<NewSample> createState() => _NewSampleState();
}

class _NewSampleState extends State<NewSample> {
   bool? _selected = false;
   Color _selectedColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: _selectedColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Switch(value: _selected!, thumbIcon: MaterialStatePropertyAll(_selected != true? const Icon(Icons.woman_2):const Icon(Icons.man)),trackColor: MaterialStatePropertyAll(
              _selected != true?Colors.white:Colors.amber) ,thumbColor: const MaterialStatePropertyAll(Colors.red),onChanged: (value){
            setState(() {
              if (value == true) {
                  _selectedColor = Colors.black;
              } else{
                _selectedColor = Colors.white;
              }
              _selected = value;
            });
            })
          ],
        ),
      ),
    );
  }
}