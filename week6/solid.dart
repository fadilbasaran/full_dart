void main() {
  IDatabase database = SQL();
  database = Mongo();

  database.write();
}

class UserManager {
  String name;
  UserManager({
    required this.name,
  });
  void changeUserName(String newName) {
    this.name = newName;
  }
}

class UserLocalization {
  final UserManager manager;

  UserLocalization(this.manager);

  void updateNameAndLocalization(args) {
    manager.changeUserName('a');
  }

  void chanceLocalization() {
    print('obeject');
  }
}

///
///
///
///Alt dallardan üst dalllara özeliik entgre ediliyor
///
///
class Product {
  final String name;
  final String money;

  Product(this.name, this.money);
}

class ProductCategory extends Product {
  //Açık kapalılık core hiç dokunmadan alt dallara dokunmadan değitiriyorsunuz
  ProductCategory(String name, String money) : super(name, money);

  final String category = 'sdaa';
}

abstract class IDatabase {
  void write();
}

class SQL extends IDatabase {
  @override
  void write() {}
}

class Mongo extends IDatabase {
  @override
  void write() {}
}

abstract class IUserOperation with IUserLocation, IUserLanguage {
  void write();
  void read();
  void delete();
}

abstract class IUserLocation {
  void locationChange();
}

abstract class IUserLanguage {
  void languageChange();
} //Bunun sayeside interfaceleri parçlayarak daha fazla gelişmesine katkıda bulunuyorum

class UserLocation extends IUserLocation {
  @override
  void locationChange() {}
}

abstract class ICameraMeneger {
  void readQR() {}
}

class DeviceCameraManager extends ICameraMeneger {
  final IphoneCameraReader iphoneCameraRead;

  DeviceCameraManager(this.iphoneCameraRead);
  @override
  void readQR() {
    iphoneCameraRead.readQR();
  }
}//Üst sınıflara karışmadan daha çok alt sınıfların kendi aralarında yapılması işlemleri

class IphoneCameraReader extends ICameraMeneger {
  @override
  void readQR() {}
}
