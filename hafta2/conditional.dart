//müşteri bankaya gelir ve 10₺ parası vardır ve bir sorgu yapar
//sorgu maliyeti 20₺'dir, eğer parası yeterse sorgu yapılır
//eğer kalan parası 0'dan küçükse bankadan kovulur
//Eğer adamın parası banking cost için yeterli değilse bankaya almayın

void main(List<String> args) {
  int newCustomerMoney = 45;
  int bankingCost = 20;
  int customerBalance = newCustomerMoney;

  if (newCustomerMoney > bankingCost) {
    print('Efendim hoşgeldiniz');
    print('Hesabınız kontrol ediliyor...');
    customerBalance = newCustomerMoney - bankingCost;
    print(
        'Hesabınızda sorgu maliyetini düştükten sonra kalan bakiyeniz $customerBalance₺\'dir');
  } else {
    print(
        'Lütfen bankamızı meşgul etmenyiniz bakiyeniz $customerBalance₺\'dir');
  }


}
