/*
Switch case :
Syntax:
  switch(exp){
    case 1:
    statement;
    break;
    default:
    statement;
    break;
  }  
*/

import 'dart:io';

void main(){
  var days;
  print("Enter your day here : ");
  days = int.parse(stdin.readLineSync()!);
  switch (days) {
    case 1:
      print("Monday");
      break;
    case 2:
      print("Tuesday");
      break;
    case 3:
      print("Wednesday");
      break;
    case 4:
      print("Thursday");
      break;
    case 5:
      print("Firday");
      break;
    case 6:
      print("Sturday");
      break;
    case 7:
      print("Sunday");
      break;
    default:
      print("Invalid Input");
      break;
  }
}