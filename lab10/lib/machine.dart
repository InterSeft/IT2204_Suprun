import 'resources.dart';
import 'icoffee.dart';
import 'enums.dart';
import 'coffee_types.dart';

class Machine {
  Resources resources;

  Machine(this.resources);

  void fillResources(Resources refill) {
    resources.coffeeBeans += refill.coffeeBeans;
    resources.milk += refill.milk;
    resources.water += refill.water;
    resources.cash += refill.cash;
  }

  ICoffee _getCoffeeByType(CoffeeType type) {
    switch (type) {
      case CoffeeType.espresso:
        return Espresso();
      case CoffeeType.cappuccino:
        return Cappuccino();
      case CoffeeType.americano:
        return Americano();
    }
  }

  bool isAvailableResources(ICoffee coffee) {
    return resources.coffeeBeans >= coffee.coffeeBeans() &&
        resources.milk >= coffee.milk() &&
        resources.water >= coffee.water();
  }

  void makeCoffeeByType(CoffeeType type) {
    ICoffee coffee = _getCoffeeByType(type);

    if (isAvailableResources(coffee)) {
      resources.coffeeBeans -= coffee.coffeeBeans();
      resources.milk -= coffee.milk();
      resources.water -= coffee.water();
      resources.cash += coffee.cash();

      print("Приготовлен кофе: ${_getCoffeeName(type)}");
    } else {
      print("Недостаточно ресурсов для: ${_getCoffeeName(type)}");
    }

    resources.printStatus();
  }

  String _getCoffeeName(CoffeeType type) {
    switch (type) {
      case CoffeeType.espresso:
        return "Эспрессо";
      case CoffeeType.cappuccino:
        return "Капучино";
      case CoffeeType.americano:
        return "Американо";
    }
  }
}
