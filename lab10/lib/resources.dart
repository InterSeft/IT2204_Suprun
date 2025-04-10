class Resources {
  int coffeeBeans;
  int milk;
  int water;
  int cash;

  Resources({
    required this.coffeeBeans,
    required this.milk,
    required this.water,
    required this.cash,
  });

  int getResource(String name) {
    switch (name) {
      case 'coffeeBeans':
        return coffeeBeans;
      case 'milk':
        return milk;
      case 'water':
        return water;
      case 'cash':
        return cash;
      default:
        throw ArgumentError('Неизвестный ресурс: $name');
    }
  }

  void setResource(String name, int value) {
    switch (name) {
      case 'coffeeBeans':
        coffeeBeans = value;
        break;
      case 'milk':
        milk = value;
        break;
      case 'water':
        water = value;
        break;
      case 'cash':
        cash = value;
        break;
      default:
        throw ArgumentError('Неизвестный ресурс: $name');
    }
  }

  void printStatus() {
    print("Текущие ресурсы:");
    print("Кофейные зёрна: $coffeeBeans");
    print("Молоко: $milk");
    print("Вода: $water");
    print("Деньги: $cash");
  }
}
