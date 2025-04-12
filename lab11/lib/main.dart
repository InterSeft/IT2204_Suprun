import 'dart:io';
import 'dart:async';

import 'machine.dart';
import 'resources.dart';
import 'enums.dart';

Future<void> main() async {
  final machine = Machine(
    Resources(coffeeBeans: 100, milk: 100, water: 100, cash: 0),
  );

  while (true) {
    print("Меню кофемашины:");
    print("1 - Эспрессо");
    print("2 - Капучино");
    print("3 - Американо");
    print("0 - Выход");

    final input = stdin.readLineSync();

    try {
      switch (input) {
        case '1':
          await machine.makeCoffeeByType(CoffeeType.espresso);
          break;
        case '2':
          await machine.makeCoffeeByType(CoffeeType.cappuccino);
          break;
        case '3':
          await machine.makeCoffeeByType(CoffeeType.americano);
          break;
        case '0':
          print("Спасибо за использование кофемашины!");
          return;
        default:
          print("Неверный ввод. Пожалуйста, выберите 1, 2, 3 или 0.");
      }
    } catch (e) {
      print("Произошла ошибка: $e");
    }
  }
}
