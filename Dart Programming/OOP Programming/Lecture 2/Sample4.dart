class Flutter{
  var name;
  var age;
  void setName(String name){
    this.name = name;
  }
 void setAge(int age){
    this.age = age;
  }
  String getName(){
    return name;
  }
  int getAge(){
      return age;
    }
}


void main(){
  var obj = Flutter();
  obj.setName("Aarohi");
  obj.setAge(25);
  print(obj.getName());
  print(obj.getAge());
}