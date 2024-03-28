import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';
import 'package:myapp/Const/export.dart';

class Payment_screen extends StatefulWidget {
  const Payment_screen({super.key});

  @override
  State<Payment_screen> createState() => _Payment_screenState();
}

class _Payment_screenState extends State<Payment_screen> {
  final amount = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Pay here ".text.make(),
      ),
      body: SafeArea(child: Container(
        child: Column(
          children: [
            "Which package will you choose?".text.size(24).make(),
            20.heightBox,
            "\$580".text.size(48).make(),
            "\$1580".text.size(48).make(),
            TextField(
              controller: amount,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12)
                ),
                hintText:"Enter your amout here"
              ),
            ).box.width(context.screenWidth - 120).make(),
            Spacer(),
            MaterialButton(color: Colors.amber,onPressed: (){
              Get.offAll(()=>Paymetsucces(amout:amount.text.toString()));
            },
            child: "Make Payment".text.make()
            )
          ],
        ),
      )),
    );
  }
}


class Paymetsucces extends StatelessWidget {
   Paymetsucces({super.key,required this.amout});
  final String amout;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        child: Column(
          children: [
            Lottie.asset("assets/payment.json"),
            "Successfully paid $amout".text.size(28).fontWeight(FontWeight.bold).make()
          ],
        ),
      ),
    );
  }
}