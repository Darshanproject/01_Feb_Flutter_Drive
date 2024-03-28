import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/Payment/payment.dart';


import '../Const/export.dart';
import '../Const/list.dart';

class Details_Card extends StatelessWidget {

  const Details_Card({super.key,required this.desp});
  // final Image? images;
  final String desp;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child:VxSwiper.builder(
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
            25.heightBox,
            "England".text.align(TextAlign.start).fontWeight(FontWeight.bold).size(42).make(),
            Container(
              width: 450,
              height: 430,
              child: SingleChildScrollView(child: Text(englanddes,overflow: TextOverflow.fade,)),
            ).box.padding(EdgeInsets.symmetric(horizontal: 20,vertical: 10)).make(),
            Positioned(
              bottom: 0,
              child: SizedBox(
                width: context.screenWidth,
                child: MaterialButton(color: Colors.deepOrangeAccent,height: 60,onPressed: (){
                  Get.offAll(()=>Payment_screen());
                },child: "Book your trip now".text.makeCentered())
              ),
            )
          ],
        ),
      ),
      
    );
  }
}