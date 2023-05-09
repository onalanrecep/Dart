void main(List<String> args) {
  //Müşterinin adını tut
  //Müşterinin parasını öğren
  //Müşteriye merhaba deyip parasını söyle
  //Uygulama kullanımı için parasına 5 ₺ ekle

  String isim = "Recep";
  int para = 50;
  print('Merhaba $isim hesabınızda $para₺ vardır.');

  para += 5;
  print(
      'Uygulamamızı kullandığınız için paranıza 5 ₺ ekledik hesabınız toplam $para₺ olmuştur');
}
