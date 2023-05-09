//Ödev 2
//Benim bir halı saham var 100 kişi kapasiteli
//Saat 10'da 20 kişilik müşteri1 maç yapacak ve kesin 20 kişi gelecek
//Saat 10'da müşteri2 gelip bana 50 kişilik yer ayırtacak
//Bu işlem sonrasında benim halı saha kapasitem kaç kalmıştır.

void main(List<String> args) {
  int haliSahaKapasite = 100;
  const musteri1 = 20;
  const musteri2 = 50;

  int sum = musteri1 + musteri2;
  int haliSahaKalanKapasite = haliSahaKapasite - sum;

  print('Halı sahamız $haliSahaKapasite kişiliktir');
  print('Saat 10\'da Müşteri 1 $musteri1 kişi ile gelecek');
  print('Saat 10\'da Müşteri 2 $musteri2 kişi ile gelecek');
  print('Sahamızın kalan kapasitesi $haliSahaKalanKapasite kişidir');
}
