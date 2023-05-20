import 'model/user_model.dart';

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
  User user1 = User('Reko', 1200, age: 37, city: 'Bingöl', id: 'dsdfh');
  User user2 = User(id: 'sds', 'Hiko', 120);
  final user3 = User(id: '12', 'Rufi', 256);
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
  List<User> kullanicilar = [
    User('Ahmet', 5600, id: 'asd'),
    User('Arzu', 1200, id: 'dsds')
  ];
  //User sınıfını liste olarak dolaşma
  for (User kullanici in kullanicilar) {
    print(kullanici.name);
  }
  //User sınıfını map olarak dolaşma
  kullanicilar.map((kullanici) => print(kullanici.name)).toList();

  //müşteri id'si 12 olana indirim yap
  if (user3.isSpecialUser('12')) {
    print(user3.money);
    user3.money += 5;
    print('Hesabınıza para eklendi');
    print('hesabınıza para eklendikten sonraki durum ${user3.money}');
  }
}

class User2 {
  // adı olmak zorunda
  // parası olmak zorunda
  // yaşını vermek zorunda değil
  // city vermek zorunda değil
  final String name;
  final int money;
  final int? age;
  final String? city;

  late final String userCode;

  User2(this.name, this.money, {this.age, this.city}) {
    userCode = (city ?? 'istanbul') + name;
  }
}
