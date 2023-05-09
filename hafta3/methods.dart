void main() {
  //benim bir müşterim var parası var mı yok mu kontrol eder misin?
  // Ya da benim kontrol edeceğim miktarın altında mı değil mi ona bakalım
  final int userMoney = 5;
  controlUserMoney(userMoney, 6);

  final int user2Money = 0;
  final userMoney2 = dolaraCevir(12000);
  final userMoney3 = dolaraCevir2(3000);
  final userMoney4 = dolaraCevir2(4000, dolarIndex: 19);
  print('2. kullanıcının parası $userMoney2\$ yapıyor');
  controlUserMoney(user2Money, 3);
  print('3. kullanıcının parası $userMoney3\$ yapıyor');
  print('4. kullanıcının parası $userMoney4\$ yapıyor');
}

void controlUserMoney(int money, minimumValue) {
  if (money > minimumValue) {
    print('Para var aga');
  } else {
    print('Yetersiz bakiye');
  }
}

int dolaraCevir(int userMoney) {
  return userMoney ~/ 20;
}

int dolaraCevir2(int userMoney, {int dolarIndex = 20}) {
  return userMoney ~/ dolarIndex;
}
