import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:api/Crud/Insert.dart';
import 'package:flutter/material.dart';

class View_Screen extends StatefulWidget {
  const View_Screen({super.key});

  @override
  State<View_Screen> createState() => _View_ScreenState();
}

class _View_ScreenState extends State<View_Screen> {
  late Future <List<Map<String,dynamic>>> data;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  Future<List<Map<String,dynamic>>> fetchdata() async{
    final response = await http.get(Uri.parse('https://database20810.000webhostapp.com/FlutterCrude/view.php'));
    if (response.statusCode == 200) {
        final List<dynamic> jsonData = jsonDecode(response.body);
        final List<Map<String,dynamic>> dataresponse = jsonData.cast<Map<String,dynamic>>();
        return dataresponse;
    }else{
      throw Exception('No Data Found in your database');
    }
  }
  Widget build(BuildContext context) {
    return  Scaffold(
      body:FutureBuilder<List<Map<String,dynamic>>>(future: data, builder: (context ,snapshot){
        if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
        }else if(snapshot.hasError){
          return Center(child: Text(snapshot.error.toString()),);
        }else if(snapshot.hasData || snapshot.data!.isEmpty){
          return ListView.builder(itemBuilder: (context ,int index){
            return ;
          });
        }
        return Center(child: Text("No data Found"),);
      }),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Insert_Screen()));
      },child: Icon(Icons.add,size: 24,),),
    );
  }
}