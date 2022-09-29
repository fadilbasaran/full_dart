void main() {}

class UserManager {
  String name;
  UserManager({
    required this.name,
  });
  void changeUserName(String newName) {
    this.name = newName;
  }
}

class UserLocalization {
  final UserManager manager;

  UserLocalization(this.manager);

  void updateNameAndLocalization(args) {
    manager.changeUserName('a');
  }

  void chanceLocalization() {
    print('obeject');
  }
}

///
///
///
///Alt dallardan üst dalllara özeliik entgre ediliyor
///
///
class Product {
  final String name;
  final String money;

  Product(this.name, this.money);
}

class ProductCategory extends Product {

  //Açık kapalılık core hiç dokunmadan alt dallara dokunmadan değitiriyorsunuz
  ProductCategory(String name, String money) : super(name, money);

  final String category='sdaa';

}
