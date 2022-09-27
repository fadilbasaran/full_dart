void main() {
  //benim  bir musterim var parası var mı yok mu kontrol edermisin
  final int userMoney = 0;
  controlUserMoney(userMoney, 0);
  /* final int userMoney = 0;
  if (userMoney > 0) {
    print('parası var');
  } else {
    print('parası yok');
  }*/

  final int user2Money = 5;
  controlUserMoney(user2Money, 5);

  // final newUSerMoney = 50;
  // print(newUSerMoney / 19);
  int result = convertToDolar(userMoney, 12);

  final newResult = converterStandartDolar(300, dolarIndex: 17);
  print(newResult);
  final newResult3 = converterStandartDolar(230);

  //required kullanıldığı zaman kessin olarak tanımlanması lazımdır
  final newResult2 = convertToEuro(userMoney: 500, euroIndex: 30);
  print(newResult2);
  final newResult4 = convertToEuro(userMoney: 500);
  print(newResult4);
  if (result > 0) {}
}

void controlUserMoney(int money, int minValue) {
  if (money > minValue) {
    print('para var');
  } else {
    print('Para yok');
  }
}

int convertToDolar(int userMoney, int dolarIndex) {
  return userMoney ~/ dolarIndex;
}

int converterStandartDolar(int userMoney, {int dolarIndex = 14}) {
  return userMoney ~/ dolarIndex;
}

int convertToEuro({required int userMoney, int euroIndex = 15}) {
  return userMoney ~/ euroIndex;
}

String sayHello() {
  return 'Hello World!!!';
}
