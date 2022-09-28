void main() {
  final userNormal = User('fb', 245);
  final userBank = BankUser('ahmet', 34, "spacial");

  final userSpacial = SpecialUser('ali', 12312, '34224', 30);
  userNormal.sayMoneyWithCompanyName();
  userBank.sayMoneyWithCompanyName();
  userSpacial.sayMoneyWithCompanyName();

  print(userSpacial.calculateMoney);
  print(userSpacial.money);
}

abstract class IUser {
  final String name;
  final int money;

  IUser(this.name, this.money);
  void sayMoneyWithCompanyName() {
    print('$name - $money paranız vardır');
  }
}

class User extends IUser {
  final String name;
  final int money;

  User(this.name, this.money)
      : super(name, money); //name ve moneyi  yollayabiliyoruz
}

class BankUser extends IUser {
  final String bankingCode;

  BankUser(String name, int money, this.bankingCode) : super(name, money);
}

class SpecialUser extends IUser {
  final String bankingCode;
  late final int _discCount;

  SpecialUser(String name, int money, this.bankingCode, int discCount)
      : super(name, money) {
    _discCount = discCount;
  }

  //musteri diyorki indirimli fiyatım ne kadar

  int get calculateMoney => money - money ~/ _discCount;
}
