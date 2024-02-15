import 'dart:io';

class A{
  void dispaly(){
    print("This is your Parent class ");
  }
}

class B extends A { 
  void dispaly1(){
    print("This is your child class ");
  }
}

class C extends A{
  void dispaly2(){
    print("This is your second child class ");
  }
}

void main(){
  var obj = B();
  var obj1 = C();
  obj.dispaly();
  obj.dispaly1();
  print("----------------------------------------------");
  obj1.dispaly();
  obj1.dispaly2();
}