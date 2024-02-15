class A{
  void dispaly() async {
    await Duration(seconds: 2);
    print("This is yorur A class");
  }
}
class B extends A{
  void dispaly1() async {
    await Duration(seconds: 2);
    print("This is your B class");
  }
}

class C extends B{
  @override
  void dispaly() {
    // TODO: implement dispaly
    super.dispaly();
    super.dispaly1();
  }
}

void main(){
  var obj =C();
  obj.dispaly();
  
}