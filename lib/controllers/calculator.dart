class CalculatorClass {
  double x;
  double y;

  CalculatorClass({required this.x, required this.y});

  // Addition
  double add() {
    return x + y;
  }

  // Subtraction
  double subtract() {
    return x - y;
  }

  // Multiplication
  double multiply() {
    return x * y;
  }

  // Division
  double divide() {
    if (y != 0) {
      return x / y;
    } else {
      throw Exception('Cannot divide by zero');
    }
  }

  // Modulus
  double modulus() {
    return x % y;
  }
}



