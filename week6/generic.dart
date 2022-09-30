void main(List<String> args) {
  final user = User('rtr');

  print(user.data);//type değişklik gösterebilir.
}

class User<T> {
  T data;
  User(this.data);
}
