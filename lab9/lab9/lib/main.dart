import 'classes/machine.dart';

void main() {
  // Создаем кофемашину с начальными значениями
  Machine machine = Machine(0, 0, 0, 0);

  // Добавляем ресурсы (теперь можно добавлять отдельно каждый ресурс)
  machine.setResource(coffee: 100, milk: 100, water: 100, cash: 50);

  // Пробуем приготовить кофе
  print(machine.makingCoffee(40, 100, 50, 30, "Капучино"));

  // Выводим текущее состояние ресурсов
  print("Остаток кофе: ${machine.coffeeBeans}g");
  print("Остаток молока: ${machine.milk}ml");
  print("Остаток воды: ${machine.water}ml");
  print("Остаток денег: \$${machine.cash}");
}
