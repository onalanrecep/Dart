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
}
