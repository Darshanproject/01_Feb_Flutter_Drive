
import 'package:flutter/material.dart';
import 'package:task/List_Divider.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
bool _choice = true;
TextEditingController _email = TextEditingController();
TextEditingController _pass = TextEditingController();

final _fromkey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Form(
          key: _fromkey,
          child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(16),
                height: 400,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text("Login",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 24),),
                      SizedBox(height: 20,),
                      TextFormField(
                        validator: (value) {
                          if(value!= null && value!.isEmpty){
                            return "enter valid email";
                          }else{
                            return null;
                          }

                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                          hintText: "Email",
                          labelText: "Email",
                          prefixIcon: Icon(Icons.email),
                        ),
                      ),
                      SizedBox(height: 10,),
                       TextFormField(
                        obscureText: _choice,
                        validator: (value) {
                          if(value!= null && value.isEmpty){
                            return "enter valid password";
                          }else{
                            return null;
                          }

                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                          hintText: "Password",
                          labelText: "Password",
                          suffixIcon: _choice == true?IconButton(onPressed: (){
                            setState(() {
                              _choice = false;
                            });
                          },icon:Icon(Icons.visibility),):IconButton(onPressed: (){
                            setState(() {
                              _choice = true;
                            });
                          }, icon: Icon(Icons.visibility_off))
                        ),
                      ),
                      SizedBox(height: 20,),
                      ElevatedButton(onPressed: (){
                        if(_fromkey.currentState!.validate()){
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login Sucess")));
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>List_Divider()));
                        }
                      },
              
                       child: Text("Login",style: TextStyle(color: Colors.black),)),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}