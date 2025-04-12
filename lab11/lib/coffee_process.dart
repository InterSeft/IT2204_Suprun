import 'dart:async';

class CoffeeProcess {
  static Future<void> heatWater() async {
    _printWithTime('Начинаю нагрев воды');
    await Future.delayed(Duration(seconds: 3));
    _printWithTime('Вода нагрета');
  }

  static Future<void> brewCoffee() async {
    _printWithTime('Начинаю заваривание кофе');
    await Future.delayed(Duration(seconds: 5));
    _printWithTime('Кофе готов');
  }

  static Future<void> frothMilk() async {
    _printWithTime('Начинаю взбивание молока');
    await Future.delayed(Duration(seconds: 5));
    _printWithTime('Молоко взбито');
  }

  static Future<void> mixCoffeeAndMilk() async {
    _printWithTime('Начинаю смешивание кофе и молока');
    await Future.delayed(Duration(seconds: 3));
    _printWithTime('Кофе с молоком готов');
  }

  static void _printWithTime(String message) {
    final now = DateTime.now();
    final time =
        '${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}:${now.second.toString().padLeft(2, '0')}';
    print('$time $message');
  }
}
