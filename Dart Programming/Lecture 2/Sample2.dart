/*
else if leadder
Syntax:
if(condtion){
  true statement;
}else if(condtion){
  statement;
}else{
  false statement;
}
*/
import 'dart:io';

void main(){
  var marks;
  print("Enter your marks here : ");
  marks = int.parse(stdin.readLineSync()!);
  if (marks > 90 && marks < 100) {
    print("A grade !!!");
  }else if(marks > 80 && marks <= 90){
    print("B grade !!");
  }else if(marks > 60 && marks <= 80){
    print("C grade !");
  }else if(marks > 40 && marks <= 60 ){
    print("D garde");
  }else if(marks > 35 && marks <= 40){
    print("Just Pass");
  }else if(marks < 35 && marks > 0){
    print("Fail");
  }else{
    print("Invalid Input");
  }
}