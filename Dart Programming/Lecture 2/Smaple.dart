/*
simple if
Syntax :
if(constion){
  true statement;
}
*/

import 'dart:io';

void main(){
  var num;
  print('Enter your values here ');
  num = int.parse(stdin.readLineSync()!);
  if(num>18){
    print("False");
  }
}