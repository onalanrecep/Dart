void main(List<String> args) {
  // switch case yapısı
// classdegree 2 ise ekrana bravo
// 1 ise olur
// 0 ise yeterli
// diğer durumlarda başarısız
  print('SwitchCase___________');
  int classDegree = 1;

  switch (classDegree) {
    case 2:
      print('bravo');
      break;
    case 1:
      print('Olur');
      break;
    case 0:
      print('Yeterli');
      break;
    default:
      print('başarısız');
  }
}
