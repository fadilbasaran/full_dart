void main() {
  //enum demek sınıfladırma demek bunu kullanmak hem performans hemde geliştirme kalemi sağlaycaktır.
  final customerMouse = Mouses.a4;
  print(customerMouse.index);
  print(customerMouse.name);

  if (customerMouse == Mouses.a4) {}
  if (customerMouse.name == 'a4') {}
  switch (customerMouse) {
    case Mouses.magic:

    case Mouses.apple:

    case Mouses.logitech:

    case Mouses.a4:
  }
}

enum Mouses { magic, apple, logitech, a4 }
