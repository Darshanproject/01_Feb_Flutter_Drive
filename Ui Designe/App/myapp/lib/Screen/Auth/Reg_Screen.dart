// ignore_for_file: file_names, camel_case_types

import 'package:myapp/Const/export.dart';
import 'package:myapp/Coustom%20widgets/Back_Screen.dart';
import 'package:myapp/Coustom%20widgets/Button.dart';
import 'package:myapp/Coustom%20widgets/Text_fileds.dart';
import 'package:myapp/Screen/Home/home.dart';

// ignore: duplicate_ignore
// ignore: camel_case_types
class Reg_Screen extends StatefulWidget {
  const Reg_Screen({super.key});

  @override
  State<Reg_Screen> createState() => _Reg_ScreenState();
}

class _Reg_ScreenState extends State<Reg_Screen> {
  final _fromkey = GlobalKey<FormState>();
  final namec = TextEditingController();
  final emailc = TextEditingController();
  final mobile = TextEditingController();
  final password = TextEditingController();
  final retypepassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Back_screen(
      child: Scaffold(
        body: Form(
          key: _fromkey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
            children: [
                Text_Fields(
                  controller: namec,
                  hint: name,
                  lable: "",
                  pass: false,
                  title: name,
                  value: (value){
                    if(value != null ){
                      return 'Please enter some name';
                    }else{
                      return null;
                    }
                  }
                ),
                Text_Fields(
                  controller: namec,
                  hint: name,
                  lable: "",
                  pass: false,
                  title: name,
                  value: (value){
                    if(value != null ){
                      return 'Please enter some name';
                    }else{
                      return null;
                    }
                  }
                ),
                Text_Fields(
                  controller: namec,
                  hint: name,
                  lable: "",
                  pass: false,
                  title: name,
                  value: (value){
                    if(value != null ){
                      return 'Please enter some name';
                    }else{
                      return null;
                    }
                  }
                ),
                Text_Fields(
                  controller: namec,
                  hint: name,
                  lable: "",
                  pass: false,
                  title: name,
                  value: (value){
                    if(value != null ){
                      return 'Please enter some name';
                    }else{
                      return null;
                    }
                  }
                ),
                Text_Fields(
                  controller: namec,
                  hint: name,
                  lable: "",
                  pass: false,
                  title: name,
                  value: (value){
                    if(value != null ){
                      return 'Please enter some name';
                    }else{
                      return null;
                    }
                  }
                ),
                TextButton(onPressed: (){
                  Get.offAll(()=> const Home());
                }, child: const Text("Already have an account?")),
                SizedBox(
                  width: context.screenWidth - 60,
                  child: Button_(
                    color: red,
                    onpress: (){
                      Get.to(()=> const Home());
                      // if (_fromkey.currentState!.validate()) {
                      // Get.offAll(()=>Home());  
                      // }
                      // else{
                      //   Text("Data donot match");
                      // }
                    },
                    textcolor: Colors.white,
                    textsize: 24,
                    title: "Signup"
                  ),

                )
            ],
                    ),
          )),
      ).box.height(context.screenHeight / 1.5).padding(EdgeInsets.symmetric(horizontal: 20,vertical: 5)).makeCentered()
    );
  }
}