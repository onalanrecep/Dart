void main() {
  int? money;
  if (money != null) {
    print(money + 50);
  } else
    print(10 + 10);
  //print(money + 10);

  // bankaya 3 müşteri geldi, birinin 100 tl'si var, birinin hesabı yok diğerinin 0₺ si var.
  // Hesabı olmayana hesap açalım. 0₺ olanı kov, 100₺ olana müşterim hoş geldin de
  int? controlMoney(int? money) {
    if (money != null && money > 0) {
      return money;
    }
  }

  List<int?> customerMoneys = [100, null, 0];
  for (var item in customerMoneys) {
    if (item != null) {
      if (item > 0) {
        print('Beyefendi Buyrun');
      } else {
        print('Bye');
      }
    } else {
      print('haydi hesap açalım');
    }

    bool result = controlMoney(item) == null ? false : true;
    print(result);
  }
  print('___________________________');
  User user1 = User('Reko', 1200, age: 37, city: 'Bingöl');
  User user2 = User('Hiko', 120);
  final user3 = User('Rufi', 256);
  print(user3.name);
  print(user1.userCode);
  print('____________' * 10);
  //Müşteri son gelen kişinin City'sine göre kampanya yapacak eğer İstanbul ise
  if (user3.city == null) {
    print('Müşteri Şehir Bilgisi vermemiş');
  } else {
    if (user3.city == 'istanbul') {
      print('Tebrikler Kazandınız');
    } else {
      print('Tekrar deneyiniz');
    }
  }
  print('__________________' * 20);
  print('Pratik Liste');
  List<User> kullanicilar = [User('Ahmet', 5600), User('Arzu', 1200)];
  //User sınıfını liste olarak dolaşma
  for (User kullanici in kullanicilar) {
    print(kullanici.name);
  }
  //User sınıfını map olarak dolaşma
  kullanicilar.map((kullanici) => print(kullanici.name)).toList();
}

class User {
  // adı olmak zorunda
  // parası olmak zorunda
  // yaşını vermek zorunda değil
  // city vermek zorunda değil
  late final String name;
  late final int money;
  late final int? age;
  late final String? city;

  late final String userCode;

  User(String name, int money, {int? age, String? city}) {
    this.name = name;
    this.money = money;
    this.age = age;
    this.city = city;
    userCode = (city ?? 'istanbul') + name;
  }
}
