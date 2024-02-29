import 'package:flutter/material.dart';

class Container_pro extends StatefulWidget {
  const Container_pro({super.key});

  @override
  State<Container_pro> createState() => _Container_proState();
}

class _Container_proState extends State<Container_pro> {
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(

      ),
      body: Container(
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){}, child: Text("1",style: TextStyle(
              color: Colors.white
            ),),style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.blue)
            ),),
            SizedBox(
              height: 20,
            ),
            TextButton(onPressed: (){}, child: Text("Forget Password")),
            SizedBox(
              height: 20,
            ),
              IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
            SizedBox(
              height: 20,
            ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
                // height: 150,
                // width: 150,
                
                decoration: BoxDecoration(
                  color: Colors.amber,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      color: Colors.black45,
                      spreadRadius: 5,
                      // blurStyle: BlurStyle.outer,
                      //  offset: Offset.zero
                    )
                  ]
                ),
                child: Text("data"),
              ),
           ),
            
            Spacer(),
            SizedBox(
              width: double.maxFinite,
              child:   MaterialButton(onPressed: (){},child: Text("Submit"),color: Colors.red,),
            ),
           
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.home),),
    );
  }
}