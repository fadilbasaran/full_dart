void main(List<String> args) {
  final user = _User('fadıl', age: 5);

  //18 yaşından küçük kontrolü yaparmısın

  //if ((user.age ?? 10) < 18) {}

  if (user.age is int) {
    if (user.age! < 18) {
      print('evet küçük');
      user.updateMoneyWithString('TR');
    } else {
      user.updateMoneyWithNumber(15);
    }
  }

  final _newType = user.moneyType is String
      ? (user.moneyType as String)
      : ''; //Eger moneyType int ise boş değilse TRA döndürecek
  print(_newType + "A");

  int money1 = 50;
  int money2 = 50;

  //Musteri banka sınıfındank iki elemanı parasını toplayıp sonucu söyler misin
  Bank moneyBank1 = Bank(234, '12');
  Bank moneyBank2 = Bank(123, '12');

  print(moneyBank1 ==
      moneyBank2); //Müşterilerin Idleri aynı ise aynı müşteri olmak zourunda

  print(moneyBank1 + moneyBank2);

  print(moneyBank2.toString());

  if (money1 == money2) {
    print('oki');
  }
}

//Kullanıcıların parası var ama herhangi bir tip olabilir
//Bir isim de olbilir bir sayı da olabilir her iki durumu da kontrol edilmesi lazım

class _User {
  final String name;
  int? age;

  dynamic moneyType;

  _User(this.name, {this.age});

  void updateMoneyWithString(String data) {
    moneyType = data;
  }

  void updateMoneyWithNumber(int number) {
    moneyType = number;
  }
}

class Bank with BankMixin {
  //Dahil etme birlikete kullanma
  final int money;
  final String id;

  Bank(this.money, this.id);

  operator +(Bank newBank) {
    return money + newBank.money;
  }

  @override
  String toString() {
    return super.toString() + 'fadıl';
  }

  bool operator ==(Object object) {
    return object is Bank && object.id == id;
  }

  @override
  void saBankaHello() {
    calculateMoney(money);
  }
}

mixin BankMixin {//Birden çok senaryo varsa plihirmisiiim gibi yapılarda kullanılır.
  void saBankaHello() {}
  void calculateMoney(int money) {
    print('money');
  }
}
