import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo/Models/Note_Models.dart';
import 'package:todo/Screen/Note.dart';
import 'package:todo/Services/DatabaseHelper.dart';

class NotesScreen extends StatefulWidget {
  const NotesScreen({super.key});

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notes"
        ),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=>NoteScreen()));
      },child: Icon(Icons.edit),),
      body: Note == null ?Center(
        child: Text("Data Not Found")
      ):FutureBuilder(future:DatabaseHelper.viewallnotes() , builder: (context,AsyncSnapshot<List<Note>?> snapshot){
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        }else if(snapshot.hasError){
          return Center(
            child: Text(snapshot.error.toString()),
          );
        }else if(snapshot.hasData){
          if(snapshot.data != null){
            return ListView.builder(itemBuilder: (context ,int index){});
          }
        }
        return Text("Hello") ; 
      })
    );
  }
}