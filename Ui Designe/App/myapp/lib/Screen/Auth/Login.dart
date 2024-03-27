import 'package:flutter/material.dart';
import 'package:myapp/Const/String.dart';
import 'package:myapp/Const/export.dart';
import 'package:myapp/Coustom%20widgets/Back_Screen.dart';
import 'package:myapp/Coustom%20widgets/Button.dart';
import 'package:myapp/Coustom%20widgets/Text_fileds.dart';
import 'package:myapp/Screen/Auth/Reg_Screen.dart';
import 'package:myapp/Screen/Home/home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _fromkey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Back_screen(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _fromkey,
          child: Column(
          children: [
            login.text.size(32).color(red).make(),
           Text_Fields(
            controller: email,
            hint: emailhint,
            lable: emailhint,
            pass: false,
            title: emailhint,
            value: (value){
              if (value != null && value.isBlank) {
                  return 'Please enter proper email here ';
              }else{
                return null;
              }
            }
           ),
           Text_Fields(
            controller: pass,
            hint: passhint,
            lable: password,
            pass: true,
            title: password,
            value: (value){
              if (value != null && value.isBlank) {
                return 'Please enter your password properly';
              }else {
                return null;
              }
            }
           ),
           TextButton(onPressed: (){
              Get.offAll(()=>Reg_Screen());
           }, child: "Reg or Sigup ?".text.make()),
            25.heightBox,
            SizedBox(
              width: context.screenWidth - 150,
              child: Button_(
                color: red,
                onpress: (){
                  Get.offAll(()=>Home());
                },
                title: login,
                textcolor: Colors.white,
                textsize: 24
              ),
            ),
          ],
        )),
      ),
    ).box.height(context.screenHeight / 1.9).width(context.screenWidth - 40).rounded.clip(Clip.antiAlias).makeCentered(),
    context: context
    );
  }
}