



/* class */
class Point {
  num x, y;
  static num factor = 0;
  // Point(this.x, this.y);
  Point(num x, num y) {
    this.x = x;
    this.y = y;
  }
  void printInfo() => print('($x, $y)');
  static void printZValue() => print('$factor');
}

class PointV2 {
  num x, y, z;
  static num factor = 0;
  Point(this.x, this.y) : z = 0; //初始化变量z
  Point.bottom(num x) : this(x, 0); // 重定向构造函数
  void printInfo() => print('($x, $y, $z)');
}

/* List */
void listTest() {
    /// List
  var list21 = new List<int>();
  print(list21);
  list21.add(1);
  print(list21);

  var list22 = new List<int>.of([1,23,2]);
  print(list22);

  var list33 = <String>['aaa' , 'bbb' ];
  print(list33);
}


/* Map */
void mapTest () {
    /// Map
  var map11 = <String, String>{'a':'s', 'b':'b'};
  
  map11['a'] = '1111';
  print(map11);

  map11['b'] = 'sss';
  print(map11['b']);
}

/* function  函数作为参数传入 */
void fuctionTest () {
    /// function
  output('what ?', printHello);
}
void output(String str, Function func) {
  var age = 10;
  func(str, 10);
}
void printHello(String inVar) => print('Hello ${inVar + ' '+ inVar}');

/* function  函数作为变量传入 */
void functionTest2 () {
  Function func = isZero;
  printInfo(0,func);
  printInfo(1,func);
}
bool isZero(int number) => number == 0;
void printInfo(int number, Function check) => print("$number is Zero: ${check(number)}");

/* 可选参数命名参数 vs 可忽略参数 */

// 要达到可选命名参数的用法，那就在定义函数的时候给参数加上 {}
void enable1Flags({bool bold, bool hidden}) => print("$bold , $hidden");

// 定义可选命名参数时增加默认值
void enable2Flags({bool bold = true, bool hidden = false}) => print("$bold , $hidden");

// 可忽略的参数在函数定义时用 [] 符号指定
void enable3Flags(bool bold, [bool hidden]) => print("$bold , $hidden");
// 定义可忽略参数时增加默认值
void enable4Flags(bool bold, [bool hidden = false]) => print("$bold ,$hidden");


void functionTest3() {
  // 可选命名参数函数调用
  enable1Flags(bold:true,hidden:false);  // true , false
  enable1Flags(bold:true); // true , null
  enable1Flags(); // null , null
  enable2Flags(); // true , false
  
  // 可忽略参数函数调用
  enable3Flags(true); // true , null
  enable4Flags(true); // true , false
}
