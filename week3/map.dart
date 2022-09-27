void main() {
  Map<String, int> users = {'ahmet': 20, 'mehmet': 30};

  print('ahmetin parası: ${users['ahmet']}');

  for (var item in users.keys) {
    print('${item} - ${users[item]}');
  }

  for (var i = 0; i < users.length; i++) {
    print('${users.keys.elementAt(i)} - ${users.values.elementAt((i))}');
  }

  print('-----------------------------');
  final Map<String, List<int>> fbBank = {
    'ahmet': [100, 300, 200]
  };
  fbBank['mehmet'] = [30, 50];
  fbBank['veli'] = [30, 40, 50];

  for (var item in fbBank.keys) {
    //bankanın tüm elemanları

    for (var money in fbBank[item]!) {
      //user hesaplarını dolaşıyorum

      if (money > 150) {
        print('kredin hazir');
        break;
      }
    }
  }

  //Bankadaki müşterilerin toplam mevlası

  for (var name in fbBank.keys) {
    //fbBank[item]!-> musteri hesaplari demek
    int result = 0;
    for (var money in fbBank[name]!) {
      result += money;
    }
    print('$name senin toplam paran --> $result');
  }
}
