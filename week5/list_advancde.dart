void main(List<String> args) {
  final model = CarModel(
      category: CarModels.bmv,
      name: 'bmw x5',
      money: 121212,
      isSecondHand: false);

  final carItems = [
    CarModel(
        category: CarModels.bmv,
        name: 'bmw x5',
        money: 33,
        isSecondHand: false),
    CarModel(category: CarModels.toyota, name: 'corola', money: 34),
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
      category: CarModels.bmv, name: 'bmw x5', money: 33, isSecondHand: false);

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
}
//Benim arabalar ile ilgili bir sınıfım olacak
//arabaların modeli, ismi, parasi kesin olacak,şehri olmayacak eger musteri soylemzse
//her durum ikinciel olacak
//Benim 5 tane arabam olacak
//Benim bu arabaların kaç tanesi ikciel

//yeni bir araba geldi bu bide var mı gibi hissediyorum

//Bana bmw olan ve moneysi 20den büyük  olanları söylermisin

class CarModel {
  final CarModels category;
  final String name;
  final double money;
  String? city;

  bool isSecondHand;
  CarModel({
    required this.category,
    required this.name,
    required this.money,
    this.city,
    this.isSecondHand = true, //eğer verilmese true olarak işaretlenecek
  });

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
}

enum CarModels { bmv, yamaha, honda, wolsvagen, toyota }
