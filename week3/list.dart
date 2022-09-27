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
}
