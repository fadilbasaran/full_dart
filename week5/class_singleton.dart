void main() {
  // Bir sınıf ama her yerden erişlebilir yani ortak bir sınıf olarakta düşünebiliriz.

  // ignore: unused_local_variable
  final newProduct = Product.money;

  calculateMoney((Product.money ?? 0));

  productNameChange();

  calculateMoney((Product.money ?? 0));

  //USer classımı kullanmak içib product oluşturmak istiyorum.

  final user1 = User('fadıl', 'aa');

  final newProduct2 = Product(user1.product);
  final newProduct3 =Product.fromUser(user1);
  
}

void calculateMoney(int money) {
  if (money > 5) {
    print('5 tl Daha eklendi');
    Product.incrementMoney(5);
    print(Product.money);
  }
}

void productNameChange() {
  Product.money = null;
}

class Product {
  String name;

  Product(this.name);
  Product.fadil([this.name = 'fadil']);

   factory Product.fromUser(User user) {
    return Product(user.name);//Üretim tesisi gibi birşey nerden geleceğini ve nereye gidileceğini yapılıyor
  }

  static int? money = 10;
  static const companyName = 'FB BANK';

  static void incrementMoney(int newMoney) {
    if (money != null) {
      money = money! + newMoney;
    }
  }
}

class User {
  final String name;
  final String product;

  User(this.name, this.product);
}
