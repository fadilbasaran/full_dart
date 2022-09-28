void main(List<String> args) {
  'AdmIn'.isAdmin() ? print('yeap') : print('nopp');
  String? name;
  name.isAdmin;
}

//Gelmezse boş kabul et
extension StringUserCheckExtansion on String? {//normlade isAdmin gelmiyor buraya soru işareti koymamız lazım
  bool isAdmin() {
    return (this ?? '').toLowerCase() == 'admin'.toLowerCase();
  }
}
