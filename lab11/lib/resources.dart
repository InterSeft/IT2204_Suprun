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

  void printStatus() {
    print("\nТекущие ресурсы:");
    print("Кофейные зёрна: $coffeeBeans");
    print("Молоко: $milk");
    print("Вода: $water");
    print("Деньги: $cash\n");
  }
}
