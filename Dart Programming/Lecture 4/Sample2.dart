import 'dart:io';

void main(){
  fun();
}
void fun(){
  var num1,num2,ans;
  print("Enter your numbers here : ");
  num1 = int.parse(stdin.readLineSync()!);
  print("Enter your numbers here : ");
  num2 = int.parse(stdin.readLineSync()!);
  ans=num1+num2;
  print("This is your addtion $ans");
}
