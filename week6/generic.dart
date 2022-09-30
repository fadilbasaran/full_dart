void main(List<String> args) {
  final user = User('rtr');

  print(user.data); //type değişklik gösterebilir.

  final adminUser = AdminUser();
  removeUserAll(adminUser);//sadec admin useden türeyenler oluşturulabilir.
}

class User<T> {
  T data;
  User(this.data);
}

void removeUserAll<T extends IAdmin>(T data) {
  data.removeUser();
}

abstract class IAdmin {
  void removeUser() {}
}

class AdminUser extends IAdmin {
  @override
  void removeUser() {}
}
