import 'icoffee.dart';

class Espresso implements ICoffee {
  @override
  int coffeeBeans() => 16;

  @override
  int milk() => 0;

  @override
  int water() => 50;

  @override
  int cash() => 4;
}

class Cappuccino implements ICoffee {
  @override
  int coffeeBeans() => 12;

  @override
  int milk() => 100;

  @override
  int water() => 50;

  @override
  int cash() => 6;
}

class Americano implements ICoffee {
  @override
  int coffeeBeans() => 14;

  @override
  int milk() => 0;

  @override
  int water() => 100;

  @override
  int cash() => 5;
}
