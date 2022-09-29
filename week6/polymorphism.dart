void main(List<String> args) {
  IUser user = Tur();
  user.sayName();

  user = English();//Ortak metotların farklı sınıflarda çalışarak metotların yerine getirilmesi.
  user.sayName();
}

abstract class IUser {
  final String name;

  IUser(this.name);
  void sayName();
}

class Tur implements IUser {
  @override
  String get name => 'Fadıl';

  @override
  void sayName() {
    print('Merhaba kapıdan hoşgeldiniz $name');
    print('Karnın aç mı');
  }
}

class English implements IUser {
  @override
  String get name => 'Justin';

  @override
  void sayName() {
    print('Welcome to your home $name');
    print('let\'s meet our friends in oxford');
  }
}
