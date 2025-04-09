import 'classes/machine.dart';

void main() {
  Machine machine = Machine(0, 0, 0, 0);

  machine.setResource(coffee: 100, milk: 100, water: 100, cash: 50);

  print(machine.makingCoffee(40, 100, 50, 30, "Капучино"));

  print("Остаток кофе: ${machine.coffeeBeans}g");
  print("Остаток молока: ${machine.milk}ml");
  print("Остаток воды: ${machine.water}ml");
  print("Остаток денег: \$${machine.cash}");
}
