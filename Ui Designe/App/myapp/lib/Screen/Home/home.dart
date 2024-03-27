import 'package:flutter/material.dart';
import 'package:myapp/Const/export.dart';
import 'package:myapp/Const/list.dart';
import 'package:myapp/Coustom%20widgets/Text_fileds.dart';
import 'package:myapp/Details%20Screen/Details.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final serachc = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Wlecome to traveling ui"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text_Fields(
                  controller: serachc,
                  hint: "What's on your mind",  
                  lable: "What's on your mind?",
                  pass: false,
                  title: "",
                  value: (value){
                    if (value != null && value.isBlank) {
                        return null;
                    }
                  }
                ),
              ),///completed serch bar here 
              /// swipers 
              10.heightBox,
              Container(
                child: VxSwiper.builder(
                  autoPlay: true,
                  autoPlayAnimationDuration: Duration(seconds: 3),
                  aspectRatio: 2.2,
                  realPage: images1.length,
                  itemCount: images1.length, itemBuilder: (context, index) {
                  return Container(
                    child: Image.asset(images1[index],fit: BoxFit.cover,),
                  );
                },),
              ),
              10.heightBox,
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    "Place you must visit atlist once ".text.size(24).color(Colors.black).fontWeight(FontWeight.bold).align(TextAlign.start).make(),
                  ],
                ),
              ),
                Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        growable: true,
                        images1.length, (index) => Card(
                        
                        elevation: 5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Container(
                              height: 150,
                              width: 250,
                              child:  Image.asset(images1[index],fit: BoxFit.cover,),
                             ),
                           ),
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Container(
                              width: 250,
                              child: Column(
                                children: [
                                  "Place 1".text.make(),
                                  "There are many variations of sagfksadgfhjglhgdfhgvchgbvhdfgfdhv".text.make()
                                ],
                              ),
                             ),///your cards have been completed here,
                           ),
                           Container(

                            // child: Column(
                            //   children: List.generate(place.length, (index) => ListTile(
                            //     title: "${place[index]}".text.make(),
                            //   ))
                            // )
                           )
                          ],
                        ),
                      )),
                    ),
                    
                  )
                ),
                25.heightBox,
                "Most Liked places to visit ?".text.fontWeight(FontWeight.bold).size(24).align(TextAlign.start).make(),
                25.heightBox,
                Container(
                  height: 450,
                  width: context.screenWidth - 80,
                  // color: Colors.amber,
                  child: ListView.builder(
                    itemCount: images1.length,
                    itemBuilder: (context ,int index){
                    return GestureDetector(
                      onTap: () {
                        Get.to(()=>Details_Card(desp: desc[0],));
                      },
                      child: Card(
                        
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                             child: CircleAvatar(
                              backgroundImage: AssetImage(images1[index]) ,
                             ),
                            ),
                            25.widthBox,
                            Container(
                              // color: Colors.amber,
                              child: Column(
                                children: [
                                  Text("Place name"),
                                  Divider(
                                    thickness: 2,
                                    color: Colors.black,
                                  ),
                                  Text("Description")
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),

                ),
                
            ],
          ),
        ),
      ),
    );
  }
}