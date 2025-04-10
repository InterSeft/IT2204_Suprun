import 'dart:io';

import 'machine.dart';
import 'resources.dart';
import 'enums.dart';

void main() {
  Resources initial = Resources(
    coffeeBeans: 100,
    milk: 100,
    water: 100,
    cash: 0,
  );
  Machine machine = Machine(initial);

  while (true) {
    print("\n1 - Эспрессо");
    print("2 - Капучино");
    print("3 - Американо");
    print("0 - Выход");

    stdout.write("Введите номер напитка: ");
    String? input = stdin.readLineSync();

    if (input == '0') {
      break;
    }

    CoffeeType? selected;

    switch (input) {
      case '1':
        selected = CoffeeType.espresso;
        break;
      case '2':
        selected = CoffeeType.cappuccino;
        break;
      case '3':
        selected = CoffeeType.americano;
        break;
      default:
        print("Неверный ввод.");
        continue;
    }

    if (selected != null) {
      machine.makeCoffeeByType(selected);
    }
  }
}
