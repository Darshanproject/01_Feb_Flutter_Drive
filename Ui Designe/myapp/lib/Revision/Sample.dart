import 'package:flutter/material.dart';

class My_Bottons extends StatefulWidget {
  const My_Bottons({super.key});

  @override
  State<My_Bottons> createState() => _My_BottonsState();
}

class _My_BottonsState extends State<My_Bottons> {
  RegExp regex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
  final _fromkey = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  TextEditingController pass = TextEditingController();
  bool selcet = true;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Form(
          key: _fromkey,
          child: Container(
            height: double.infinity,
            width: double.maxFinite,
            decoration: const BoxDecoration(
              image: DecorationImage(image: NetworkImage("https://media.istockphoto.com/id/949118068/photo/books.jpg?s=612x612&w=0&k=20&c=1vbRHaA_aOl9tLIy6P2UANqQ27KQ_gSF-BH0sUjQ730="),fit: BoxFit.cover)
            ),
            child: Container(
             
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: name,
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                        return 'Enter valid email or user name';
                    }else{
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    fillColor: Colors.grey[300],
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)
                    ),
                    hintText: "Email username or mobile number ",
                  ),
                ),
                ),
                Padding(padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: pass,
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                        return 'Enter valid  Password';
                    }else if(regex.hasMatch(value!)){
                      return null;
                    }else{
                      return 'Password is not in corret formate';
                    }
                  },
                  obscureText: selcet,
                  maxLength: 16,
                  decoration: InputDecoration(
                      fillColor: Colors.grey[300],
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)
                    ),
                    hintText: " Password ",
                    suffixIcon: selcet? IconButton(onPressed: (){
                      setState(() {
                        selcet = false;
                      });
                    }, icon: const Icon(Icons.visibility)):IconButton(onPressed: (){
                      setState(() {
                        selcet = true;
                      });
                    }, icon: const Icon(Icons.visibility_off,color: Colors.green,))
                  ),
                ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 50,
                  child: ElevatedButton(onPressed: (){
                    if (_fromkey.currentState!.validate()) {
                      name.clear();
                      pass.clear();
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const My_Screen()));
                    }
                  }, child: const Icon(Icons.home)),
                )
              ],
                    ),
            ),
          )),
      ),
    );
  }
}



class My_Screen extends StatelessWidget {
  const My_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      // ignore: avoid_unnecessary_containers
      child: Container(
        child: const Text("Home Page"),
      ),
    );
  }
}