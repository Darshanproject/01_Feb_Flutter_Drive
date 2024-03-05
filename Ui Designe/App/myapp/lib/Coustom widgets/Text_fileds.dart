import 'package:myapp/Const/export.dart';

Widget Text_Fields({String? title,String? hint,String? lable,controller,value,pass}){
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      title!.text.color(red).make(),
      TextFormField(
        obscureText: pass,
        controller: controller,
        validator: value,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)
                    ),
                    hintText: hint,
                    labelText: lable,
            
                  ),
                ),
                10.heightBox
    ],
  );
}