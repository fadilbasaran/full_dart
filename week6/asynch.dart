Future<void> main(List<String> args) async {
  print('a');

  Stream<int> bankMoney = Stream.empty();
  bankMoney = dataAddBankMoney(55, 3);
  // bankMoney.listen((event) {
  //   print(event);
  // });
  print(await bankMoney.where((event) => event == 258).toList());
  // await  Future.forEach([1,2,3,4,5,6],(int element) async {
  //   await Future.delayed(Duration(seconds: 2));
  //   print('islem bitti $element');
  // });
  // await Future.delayed(Duration(seconds: 2));
  print('ab');

  //5 sanitye bekle sonra gel hicbir musteri alma

  print('hello');

  Future.delayed(Duration(seconds: 1)).whenComplete(() {
    print('hello2');
  });
  print('hello3');

  Future.delayed(Duration(seconds: 2)).whenComplete(() {
    print(
        'hello4'); //bunun saniyesi en büyük olduğu için bu işlemi en son yapıyor
  });
}

Stream<int> dataAddBankMoney(int retryCount, int money) async* {
  int _retryCount = 0;
  await Future.delayed(Duration(seconds: 1));

  while (_retryCount < retryCount) {
    _retryCount++;

    yield money += 5;
}
}







//Bir servise cevap sonradan gelecek
//zaman alan bir matematik sorusu olduğunda 


//sync 