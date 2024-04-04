

import 'package:flutter/material.dart';
import 'package:todo/Models/Note_Models.dart';
import 'package:todo/Services/DatabaseHelper.dart';

class NoteScreen extends StatelessWidget {
  final Note? note;
   NoteScreen({super.key, this.note});

  final titlec = TextEditingController();
  final descriptionc = TextEditingController();
  @override
  Widget build(BuildContext context) {
    if (note != null) {
      titlec.text = note!.title;
      descriptionc.text = note!.description; 
    }
    return  Scaffold(
      appBar: AppBar(
        title:  note == null?Text("Add Note"): Text("Update Note"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 20
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: titlec,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)
                    ),
                    hintText: "Title"
                  
                  ),
                  maxLines: 1,
                ),
             const   SizedBox(
                  height: 10,
                ),
               TextField (
                  controller: descriptionc,
                   decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)
                    ),
                    hintText: "Description"
                  
                  ),
                  maxLines: 5,
                  maxLength: 500,
                ),
              ],
            ),
          ),
       const   Spacer(),
          SizedBox(
            width: double.maxFinite,
            child: MaterialButton(onPressed: () async{
              final title = titlec.value.text;
              final desc = descriptionc.value.text;
              if (titlec.text == null || descriptionc.text == null) {
                return null;
              }
              final Note model = Note(id: note?.id, title: title, description: desc);
              if(note==null){
                await DatabaseHelper.addNotes(model);
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Data Added"),backgroundColor: Colors.green,));
              }else{
                await DatabaseHelper.updatenotes(model);
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Data Updated"),backgroundColor: Colors.amber,));
              }
            },child: Text(note==null?"Add Note":"Update Note"),),
          )
        ],
      ),
    );
  }
}