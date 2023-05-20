class User {
  // adı olmak zorunda
  // parası olmak zorunda
  // yaşını vermek zorunda değil
  // city vermek zorunda değil
  // city yoksa ist say
  // id değişkenine sadece bu sınıf içinden erişebilsin
  late final String name;
  late int money;
  late final int? age;
  late final String? city;

  late final String userCode;

  late final String _id;

  User(String name, int money, {required String id, int? age, String? city}) {
    this.name = name;
    this.money = money;
    this.age = age;
    this.city = city;
    _id = id;
    userCode = (city ?? 'istanbul') + name;
  }

  bool isSpecialUser(String id) {
    return _id == id;
  }
}
