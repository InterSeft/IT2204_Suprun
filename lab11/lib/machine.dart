import 'resources.dart';
import 'icoffee.dart';
import 'enums.dart';
import 'coffee_types.dart';
import 'coffee_process.dart';

class Machine {
  final Resources resources;

  Machine(this.resources);

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

  bool _isAvailableResources(ICoffee coffee) {
    return resources.coffeeBeans >= coffee.coffeeBeans() &&
        resources.milk >= coffee.milk() &&
        resources.water >= coffee.water();
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

  Future<void> makeCoffeeByType(CoffeeType type) async {
    final coffee = _getCoffeeByType(type);

    if (!_isAvailableResources(coffee)) {
      print(
        "\nНедостаточно ресурсов для приготовления ${_getCoffeeName(type)}!",
      );
      resources.printStatus();
      return;
    }

    await CoffeeProcess.heatWater();

    if (type == CoffeeType.cappuccino) {
      await Future.wait([
        CoffeeProcess.brewCoffee(),
        CoffeeProcess.frothMilk(),
      ]);
      await CoffeeProcess.mixCoffeeAndMilk();
    } else {
      await CoffeeProcess.brewCoffee();
    }

    resources.coffeeBeans -= coffee.coffeeBeans();
    resources.milk -= coffee.milk();
    resources.water -= coffee.water();
    resources.cash += coffee.cash();

    resources.printStatus();
  }
}
