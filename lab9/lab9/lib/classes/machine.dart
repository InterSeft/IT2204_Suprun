class Machine {
  double _coffeeBeans;
  double _milk;
  double _water;
  double _cash;

  Machine(this._coffeeBeans, this._milk, this._water, this._cash);

  // Геттеры и сеттеры
  double get coffeeBeans => _coffeeBeans;
  set coffeeBeans(double value) => _coffeeBeans = value;

  double get milk => _milk;
  set milk(double value) => _milk = value;

  double get water => _water;
  set water(double value) => _water = value;

  double get cash => _cash;
  set cash(double value) => _cash = value;

  // Проверка доступности ресурсов (исправлено название метода)
  bool _isAvailableResources(
    double coffee,
    double milk,
    double water,
    double cash,
  ) {
    return _coffeeBeans >= coffee &&
        _milk >= milk &&
        _water >= water &&
        _cash >= cash;
  }

  // Добавление ресурсов (изменено для добавления каждого ресурса отдельно)
  void setResource({
    double? coffee,
    double? milk,
    double? water,
    double? cash,
  }) {
    if (coffee != null) _coffeeBeans += coffee;
    if (milk != null) _milk += milk;
    if (water != null) _water += water;
    if (cash != null) _cash += cash;
  }

  // Уменьшение ресурсов
  void _subtractResources(
    double coffee,
    double milk,
    double water,
    double cash,
  ) {
    _coffeeBeans -= coffee;
    _milk -= milk;
    _water -= water;
    _cash -= cash;
  }

  // Приготовление кофе (добавлена проверка на отрицательные значения)
  String makingCoffee(
    double coffee,
    double milk,
    double water,
    double cash,
    String type,
  ) {
    if (coffee < 0 || milk < 0 || water < 0 || cash < 0) {
      return "Количество ресурсов не может быть отрицательным!";
    }

    if (_isAvailableResources(coffee, milk, water, cash)) {
      _subtractResources(coffee, milk, water, cash);
      return "$type готов!";
    }
    return "Недостаточно ресурсов для приготовления $type.";
  }
}
