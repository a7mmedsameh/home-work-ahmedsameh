void main() {
  print("Addition: ${Addition(5, 10, [1, 5, 6])}");
  print("Subtraction: ${Subtraction(5, 10, [1, 5, 6])}");
  print("Multiplication: ${Multiplication(5, 10, [1, 5, 6])}");
  print("Division: ${Division(5, 0, [1, 5, 6])}");
}

double Addition(double num1, double num2, [List<double>? multipleNum]) {
  double result = num1 + num2;
  if (multipleNum != null) {
    for (double num in multipleNum) {
      result += num;
    }
  }
  return result;
}

double Subtraction(double num1, double num2, [List<double>? multipleNum]) {
  double result = num1 - num2;
  if (multipleNum != null) {
    for (double num in multipleNum) {
      result -= num;
    }
  }
  return result;
}

double Multiplication(double num1, double num2, [List<double>? multipleNum]) {
  double result = num1 * num2;
  if (multipleNum != null) {
    for (double num in multipleNum) {
      result *= num;
    }
  }
  return result;
}

double Division(double num1, double num2, [List<double>? multipleNum]) {
  double result = num1 / num2;
  if (multipleNum != null) {
    for (double num in multipleNum) {
      result /= num;
    }
  }
  return result;
}
