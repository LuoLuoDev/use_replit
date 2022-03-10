class Nah {
  List? arr;
}

void main () {
  Nah nah = Nah();
  if (nah.arr != null){
    for (var ii in nah.arr!) {
      print(ii);
    } 
  }
}

