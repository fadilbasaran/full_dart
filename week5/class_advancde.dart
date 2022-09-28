void main(List<String> args) {
  final user = _User('fadıl', age: null);

  //18 yaşından küçük kontrolü yaparmısın

  //if ((user.age ?? 10) < 18) {}

  if (user.age is int) {
    if (user.age! < 18) {
      print('evet küçük');
    }
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
    
  }  
}
