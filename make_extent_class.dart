
class Meta {
  double price;
  String name;
  Meta(this.name, this.price);
}
// 定义商品 Item 类
class Item extends Meta {
  Item(name, price) : super(name, price);
  // 重载了 + 运算符，合并商品为套餐商品
  Item operator+(Item item) => Item(name + item.name, price + item.price);
}

// 定义购物车类
class ShoppingCart extends Meta {
  DateTime date;
  String code;
  List<Item> bookings;

  double get price => bookings.reduce((value, element) => value + element).price;

  ShoppingCart(name, this.code) : date = DateTime.now(), super(name, 0);
  
  getInfo() {
  return '购物车信息:' +
  '\n-----------------------------' + '\n 用户名: ' + name+
  '\n 优惠码: ' + code +
  '\n 总价: ' + price.toString() + '\n 日期: ' + date.toString() + '\n-----------------------------';
  }
}


void main() {
  ShoppingCart sc = ShoppingCart('张三', '123456'); sc.bookings = [Item('苹果',10.0), Item('鸭梨',20.0)]; print(sc.getInfo());
}