void main() {
  List<int> moneys = [500, 110, 700];
  final List<int> newMoneys = [250, 105, 700, 90, 26, 350];
  print('musteri 1 parası ${moneys[0]}');

  //Parası büyük olana göre sıralan

  moneys.sort();
  print(moneys);

  moneys.add(50);
  moneys.sort();
  moneys.insert(1, 900);
  print(moneys);
  print('__________________________________');

  newMoneys.sort();
  //newMoneys = [];
  newMoneys.add(5);
  newMoneys.sort();
  print(newMoneys);
  newMoneys.clear();
  print(newMoneys);
  print('___________________________________');
  //100 tane müşteri yap bunların hepsine sırayla  numarasına göre 5₺ ekle
  List<double> customerMoney = List.generate(100, (index) {
    return index + 5;
  });

  print(customerMoney);
  print('__________________________________');
  //Customer Money 100 30 40 60
  // 35₺'den büyük meblağa sahip olanlara 'Kredi verilebilir yaz'
  // 35₺'den küçük olanlara bye bye Kemal yaz :)

  List<int> musteriKrediUygunlukKontrol = [100, 30, 40, 60];
  for (int i = 0; i < musteriKrediUygunlukKontrol.length; i++) {
    print('Müşteri Parası: ${musteriKrediUygunlukKontrol[i]}');
    if (musteriKrediUygunlukKontrol[i] < 35) {
      print('Bu Müşteriye Kredi Verilemez');
    } else {
      print('Bu Müşteri kreyi uygundur');
    }
  }
}
