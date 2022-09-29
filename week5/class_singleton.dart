void main() {
  // Bir sınıf ama her yerden erişlebilir yani ortak bir sınıf olarakta düşünebiliriz.

  // ignore: unused_local_variable
  final newProduct = Product.money;

  calculateMoney();
}

void calculateMoney() {
  if (Product.money > 5) {
    print('5 tl Daha eklendi');
    Product.incrementMoney(5);
    print(Product.money);
  }
}

class Product {
  static int money = 10;

  static void incrementMoney(int newMoney) {
    money += newMoney;
  }
}
