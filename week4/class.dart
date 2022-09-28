// ignore_for_file: unused_local_variable, duplicate_ignore

import 'model/user_model.dart';

void main() {
  //Musteri adı var, parası var yasi var bla bla

  final int customerMoney = 50;
  // ignore: unused_local_variable
  final String customerName = "fadıl";
  final int customerAge = 23;

  //Bu müşterinin yaşı 10dan büyük ise bu işlemi yap

  controlCustomerAge(customerAge);

  int? newMoney;
  // print(newMoney!+10);
  if (newMoney != null) {
    print(newMoney + 10);
  } else {
    print(10 + 10);
  }
  List<int?> costumerMoneys = [100, null, 0];

  for (var item in costumerMoneys) {
    if (item != null) {
      if (item > 0) {
        print('Bey efendi');
      } else {
        print("baye baye");
      }
    } else {
      print('Hayde hesap açalım');
    }

    // ---------
    bool result = controlMoney(item) == null ? false : true;
    print(result);
  }

  print('-------------' * 10);

  // ignore: unused_local_variable
  int costumerMoneyX = 15;
  User user1 = User('fadıl', 15, age: 22, city: 'batman', id: '123');
  //User user2 = User('fadıl2', 15);

  final users3 = User('aa', 159, age: 13, id: '12');
  print(user1.name);
  //print(users3._id);

  //Son gelen kişini citysine göre kampanya yapılacak eğer istanbul ise

  if (users3.city == null) {
    print('müşteri şehir bilgisini vermemiş');
  } else {
    if (users3.city!.isEmpty) {
      print('ekok');
    }
    if (users3.city == 'istanbul') {
      print('Tebrikler Kazandınız');
    }
  }

//Musteri idsi 12 olana indirim yap
  if (users3.isSpecialUser('12')) {
    users3.money -= 5;
    print('indirim yapıldı. son fiyat ${users3.money}');
  }
}

// ignore: body_might_complete_normally_nullable
int? controlMoney(int? money) {
  if (money != null && money > 0) {
    return money;
  }
  //olmadığında her türlü null giriyor

  // if (money == null || money == 0) {
  //   return null;
  // }
}

void controlCustomerAge(int value) {
  if (value > 10) {
    print('alışveriş yapabilirsiniz');
  } else {
    print('Alışveriş yapamazsınız');
  }
}

class User2 {
  final String name;
  final int money;
  final int? age;
  final String? city;
  late final String userCode;

  User2(this.name, this.money, {this.age, this.city}) {
    userCode = (city ?? 'ist') + name;
  }
}
