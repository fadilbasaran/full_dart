void main() {
  Map<String, int> users = {'ali': 20, 'mehmet': 30};

  //Musteri ahmetin parası
  print('ahmetin parasi ${users['ali']}');

//Müşteri kimler var senin elinde
  for (var item in users.keys) {
    print('${item} - ${users[item]}');
  }
  for (var i = 0; i < users.length; i++) {
    print('${users.keys.elementAt(i)} - ${users.values.elementAt(i)}');
  }

  Map<String, List<int>> fbBank = {
    'ahmet': [100, 200, 300]
  };
  fbBank['ali'] = [30, 40];
  fbBank['reco'] = [30, 50, 70];
/*
  for (var item in fbBank.keys) {
    for (var money in fbBank[item]!) {
      if (money > 150) {
        print('kredi hazir');
        break;
      }
    }
  }
  */
  for (var name in fbBank.keys) {
    int result = 0;
    for (var money in fbBank[name]!) {
      result += money;
    }
    print('${name} senin toplam paran -> $result ');
  }
}
