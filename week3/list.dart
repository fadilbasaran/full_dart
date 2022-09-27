void main(List<String> args) {
  //Bir bankaya on müşteri gelir bunların 100 tlsi 110tlsi ve 50 Tlsi var

  // ignore: unused_local_variable
  final int money1 = 100;
  // ignore: unused_local_variable
  final int money2 = 110;

  List<int> moneys = [100, 110, 50, 300, 500];
  final List<int> newMoneys = [100, 110, 50, 300, 500];

  print('musteri 1 parasi:${moneys[0]}');
  moneys.sort();
  moneys.add(5);
  moneys.insert(3, 600);
  print(moneys);

  newMoneys.add(4);
  newMoneys.clear();
  print(newMoneys);

  //newMoneys.reversed.toList();

  //100 tane musteri yap sıra ile 5 tl ekle
  List<double> customerMoney = List.generate(100, (index) {
    return index + 5;
  });
  print(customerMoney);

//35 tleden buyuk olanları kredi verebiliriz yaz
//küçük olanları bye bye yaz
  List<int> moneyCostumerNews = [100, 30, 40, 60];

  
}
