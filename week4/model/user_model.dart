class User  extends Object{
  //Bu değişken sonradan değerini bulacak ve ekranda hayat bulacak
  late final String name;
  late int money; //finalı kaldırdık sonradandeğiştirebilir olması için
  late final int? age;
  late final String? city;
  //ID değişkenine sadece bu sınıf içinden erişebilsin
  // ignore: unused_field
  late final String _id;

  //Late final denildiği zaman kesinlikle constructor metdodda kullanılması lazım
  late final String userCode;
  User(String name, int money, {required String id, int? age, String? city}) {
    this.name = name;
    this.money = money;
    this.age = age;
    this.city = city;
    _id = id;
    userCode = (city ?? 'ist') + name;
  }

  bool isSpecialUser(String id) {
    return _id == id;
  }

  // bool isEmptyId() {
  //   return _id.isEmpty;
  // }

  bool get isEmptyId => _id.isEmpty; //Bir değerde almadığı için () kaldırdık
}
