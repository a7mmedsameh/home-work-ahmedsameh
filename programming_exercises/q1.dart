import 'dart:io';

void main() {
  print("enter num1");
  num num1 = num.parse(stdin.readLineSync()!);
  print("enter num2");
  num num2 = num.parse(stdin.readLineSync()!);
  print("Addition: ${Addition(num1, num2)}");
  print("Subtraction: ${Subtraction(num1, num2)}");
  print("Multiplication: ${Multiplication(num1, num2)}");
  print("Division: ${Division(num1, num2)}");
}

num Addition(num1, num2) {
  return num1 + num2;
}

num Subtraction(num1, num2) {
  return num1 - num2;
}

num Multiplication(num1, num2) {
  return num1 * num2;
}

num Division(num num1, num num2) {
  if (num2 == 0) {
    throw Exception("Cannot divide by zero");
  }
  return num1 / num2;
}
