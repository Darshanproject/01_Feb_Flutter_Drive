import 'dart:io';

class Flutter{
  Flutter(int num1 ,int num2){
    var ans=num1+num2;
      print("This is your addtion of two numbers : $ans");
  }
}

void main(){
  var a,b;
  print("Enter you First Numbere here : ");
  a = int.parse(stdin.readLineSync()!);
  print("Enter your Second Numbere here : ");
  b = int.parse(stdin.readLineSync()!);
  var obj = Flutter(a,b);
}