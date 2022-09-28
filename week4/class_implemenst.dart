void main() {}

abstract class IStudent {//implemente edilen classlar aynı özellikleri taşıması lazım
  final String name;
  final String age;
  int? schoolId;

  IStudent(this.name, this.age);
  void saySomething() {
    print(age);
  }
}

class Student implements IStudent {
  final String name;
  final String age;

  Student(this.name, this.age);

  @override
  int? schoolId;

  @override
  void saySomething() {}
}
