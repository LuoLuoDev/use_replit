class Point {
  num x = 0, y = 0;
  // Point(this.x, this.y);
  void printInfo() => print('($x, $y)');
}

// Vector 继承自 Point
class Vector extends Point {
  num z = 0;
  // Vector(this.z) : super(0 ,0);
  @override
  void printInfo() => print('($x, $y, $z)');
}
// Coordinate是对Point的接口的实现
class Coordinate implements Point {
  num x = 0, y = 0;
  void printInfo() => print('($x, $y)');
}

// mixin 混入,使用关键字 with
class CoordinateV2 with Point {
}

main() {
  var p = Vector();
  p
    ..x = 1
    ..y = 2
    ..z = 2;
  p.printInfo();
  print(p is Point);

  var c = Coordinate();
  c 
    ..x = 9
    ..y = 7;
  c.printInfo();
  print(c is Point);

  var c2 = Coordinate();
  c2 
    ..x = 9;
  c2.printInfo();
  print(c2 is Point);
}
