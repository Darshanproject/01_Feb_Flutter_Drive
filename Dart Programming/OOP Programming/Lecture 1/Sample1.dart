/*
Synatx:
class class_name{
  member function(){
    body
  }
}
void main(){
  obejct  class_name 
}
*/
class Tops{    ///creating class 
  faculty(){          ///Creating Method
    print("Darhan");
  }                 
  students(){       ///Creating Mehod
      print("Ritesh");
      print("Arohi");
      print("Tannmay");     /// member function body
      print("Aziza");
  }
  counseler(){
    print("Riddhi Ma'am");
    print("Shobha Ma'am");
    print("Richa Ma'am");
  }
}

void main(){  
  var obj = Tops();     ///creating object of class
  obj.faculty();
  obj.students();  ///calling method using of object
  obj.counseler();
}