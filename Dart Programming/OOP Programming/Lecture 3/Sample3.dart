class Tops{
  void rocks(){
    print("This is your most awaited lecture !!!!!");
  }
}

class Students extends Tops{
   rocks() {
    print("This is the most boring lecture ");
    super.rocks();
  }
}


void main(){
  var obj = Students();
  obj.rocks();
}