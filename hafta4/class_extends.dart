void main(List<String> args) {
  final userNormal = User('Reko', 560);
  userNormal.sayMoneyWithCompanyName();
}

abstract class IUser {
  final String name;
  final int money;
  IUser(this.name, this.money);
  void sayMoneyWithCompanyName() {
    print('Sayın $name -$money₺ paranız vardır.');
  }
}

class User extends IUser {
  /* final String name;
  final int money; */

  User(String name, int money) : super(name, money);
}
