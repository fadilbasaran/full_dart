import 'class_singleton.dart';

void main(List<String> args) {
  // ignore: unused_local_variable
  final model = CarModel(
      category: CarModels.bmv,
      name: 'bmw x5',
      money: 121212,
      isSecondHand: false);

  final carItems = [
    CarModel(
        category: CarModels.bmv,
        name: 'bmw x5',
        money: 80,
        isSecondHand: false),
    CarModel(category: CarModels.toyota, name: 'corola', money: 30),
    CarModel(
        category: CarModels.honda,
        name: 'civic',
        money: 45,
        isSecondHand: false),
    CarModel(
        category: CarModels.yamaha,
        name: 'ybr',
        money: 36,
        isSecondHand: false),
    CarModel(category: CarModels.wolsvagen, name: 'passat', money: 67)
  ];

  final resultCount =
      carItems.where((element) => element.isSecondHand == true).length;

  print('kaç tane ikinci el araba var : $resultCount');

  final newCar = CarModel(
      category: CarModels.bmv, name: 'bmw x5', money: 80, isSecondHand: false);

  final isHaveCar = carItems.contains(newCar);

  if (isHaveCar) {
    print('elmizde var almaya gerek yok');
  } else {
    print('patron yok alalım');
  }

  final resultBmwMore20 = carItems.where((element) {
    return element.category == CarModels.bmv && element.money > 20;
  }).join(); //
  print(resultBmwMore20);

  final carNames = carItems.map((e) => e.name).join(',');
  print(carNames);

  bool isHaveCarMercedes = false;

  try {
    final mercedesCar = carItems
        .singleWhere((element) => element.category == CarModels.mercedes);
    print(mercedesCar.name);
    isHaveCarMercedes = true;
  } catch (e) {
    print('araba yok');
    isHaveCarMercedes = false;
  } finally {
    print('abibu işlem ağır oldu bir daha sorma $isHaveCarMercedes');
  }
  final index = carItems.indexOf(newCar);
  print(index);

  final _mercedes =
      CarModel(category: CarModels.mercedes, name: 'komperasor', money: 36);

  carItems.add(_mercedes);

  carItems.sort((first, second) => second.money
      .compareTo(first.money)); //Kendi karşılaitırma ifademizi kendimiz yazdık.
  print(carItems.reversed); //Küçükten büyüğe

  // ignore: unused_local_variable
  final users =
      carItems.expand((element) => element.users).toList(); /*not düşüldü */
  calculateToUser(List.of(carItems));
  carItems.remove(_mercedes);
  carItems.removeWhere((element) =>
      element.category == CarModels.mercedes || element.money < 40);

  print(carItems);
}

void calculateToUser(List<CarModel> items) {
  //İtemsları düzelt bmw olanaları yamahaya çevir
  final _items = [...items];
  final newItems = _items.map((CarModel e) {
    CarModel(
        category: e.category == CarModels.bmv ? CarModels.yamaha : e.category,
        name: e.name,
        money: e.money,
        isSecondHand: false);
    return e;
  }).toList();
  print(newItems);
}
//Benim arabalar ile ilgili bir sınıfım olacak
//arabaların modeli, ismi, parasi kesin olacak,şehri olmayacak eger musteri soylemzse
//her durum ikinciel olacak
//Benim 5 tane arabam olacak
//Benim bu arabaların kaç tanesi ikciel

//yeni bir araba geldi bu bide var mı gibi hissediyorum

//Bana bmw olan ve moneysi 20den büyük  olanları söylermisin

//Sadece isimleri yan yana gösterebilri misin

//Benim elimde merecedes var mi

// Yeni gelen araba kaçıncı sırada bunu söyleyebilir misin
//Ya ben yeni araba aldım mercedes ekler misin

// Bana arabalarımı küçükten büyğe doğru sıralar mısın

//Ben bütün arabalarımı Usere Cevirceğim
// En son ekleneni silelim ve bmw ve 30dan küçük olanları silelim
class CarModel {
  CarModels category;
  final String name;
  final double money;
  String? city;
  List<User> users;
  bool isSecondHand;
  CarModel(
      {required this.category,
      required this.name,
      required this.money,
      this.city,
      this.isSecondHand = true, //eğer verilmese true olarak işaretlenecek
      this.users = const []});

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CarModel &&
        other.category == category &&
        other.name == name &&
        other.money == money &&
        other.city == city &&
        other.isSecondHand == isSecondHand;
  }

  @override
  int get hashCode {
    return category.hashCode ^
        name.hashCode ^
        money.hashCode ^
        city.hashCode ^
        isSecondHand.hashCode;
  }

  @override
  String toString() {
    return '$name - $money';
  }
}

enum CarModels { bmv, yamaha, honda, wolsvagen, toyota, mercedes }
