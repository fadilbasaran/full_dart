Future<void> main(List<String> args) async {
  print('a');
  // await  Future.forEach([1,2,3,4,5,6],(int element) async {
  //   await Future.delayed(Duration(seconds: 2));
  //   print('islem bitti $element');
  // });
  // await Future.delayed(Duration(seconds: 2));
  print('ab');

  //5 sanit-ye bekle sonra gel hicbir musteri alma

  print('hello');

  Future.delayed(Duration(seconds: 3)).whenComplete(() {
    print('hello2');
  });
  print('hello3');

  Future.delayed(Duration(seconds: 2)).whenComplete(() {
  print('hello4');

  });
}








//Bir servise cevap sonradan gelecek
//zaman alan bir matematik sorusu olduğunda 


//sync 