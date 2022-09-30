void main(List<String> args) {
  final user = User(45);

  user.calculateMoney((int result) {
    print(user.money);
    return result + 5;
  });

  print(user.money);
}

typedef CalculateCallBack = int Function(int data);

class User {
  int money;
  User(this.money);

  void calculateMoney( CalculateCallBack onComplate) {
    money += 5;
    final passData = onComplate(money);
  }
}
