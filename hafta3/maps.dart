void main(List<String> args) {
  //müşteri geldi Ahmet parası 20
  Map<String, int> users = {'Ahmet': 20, 'Mehmet': 45};

  print('Ahmetin parası ${users['Ahmet']}₺');
  print('Mehmetin parası ${users['Mehmet']}₺');

  for (var item in users.keys) {
    print('${item}-${users[item]}');
  }
  print('-------------------');
  for (var i = 0; i < users.length; i++) {
    print('${users.keys.elementAt(i)} - ${users.values.elementAt(i)}');
  }
  print('----------------------------');
  // Ben Bankayım. Müşterilerimin birden fazla hesabı olabilir
  // Ahmet Bey 3 hesabı var, sırasıyla 100, 300, 200
  // Mehmet Bey 2 hesabı var 30, 50
  // Veli Bey 1 hesap 30.

  // Müşteri heasplarını kontrol et, her hangi bir hesapta 150₺'den fazla varsa krediniz hazır de.

  //Map kurduk
  final Map<String, List<int>> vbBank = {
    'Ahmet': [100, 300, 200]
  };

  // Kurduğumuz Map içerisine baş müşteriler ve müşteri hesaplarını aşağıda tanımladık.
  vbBank['Mehmet'] = [30, 250];
  vbBank['Veli'] = [30];

  for (var item in vbBank.keys) {
    //bankanın tüm müşterileri
    for (var money in vbBank[item]!) {
      //kullanıcının hesaplarını dolaşıyorum
      if (money > 150) {
        print('Kredin Hazır');
        break;
      }
    }
  }

  print('---------------------------');
  //Müşterilere bankadaki toplam paralarını gösteriyoruz

  for (var name in vbBank.keys) {
    int result = 0;
    for (var money in vbBank[name]!) {
      result = result + money;
    }
    print('$name senin hesaplarındaki paraların $result₺');
  }
}
