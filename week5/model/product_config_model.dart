class ProductConfig {// Bu kullanıldığında direk bellekte yerini alacaktır.
  //Sadece bir tane sınıf oluşturulabilsln
  static final ProductConfig instance = ProductConfig._('a');

  final String apiKey;

  ProductConfig._(this.apiKey);//Sadece bu sınıftan türeyenler görebilir
}

class  ProDuctLazySingleton{//Tetiklendiği zaman doluyor ve ekranda gösteriliyor.
				static ProDuctLazySingleton ?_instace;
        static ProDuctLazySingleton get instace{
          if(_instace==null) _instace=ProDuctLazySingleton._init();
          return _instace!;//Ne zaman çağrılırsa burada private yaptığımız instace döndürüyoruz
        }
        ProDuctLazySingleton._init();
			}