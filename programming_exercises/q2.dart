import 'dart:io';

void main() {
  print("Enter the temperature in Celsius to convert to Fahrenheit:");
  num c = num.parse(stdin.readLineSync()!);
  print("Temperature in Fahrenheit: ${converterCtoF(c)}");

  print("Enter the temperature in Fahrenheit to convert to Celsius:");
  num f = num.parse(stdin.readLineSync()!);
  print("Temperature in Celsius: ${converterFtoC(f)}");
}

num converterCtoF(num c) {
  return (c * 9 / 5) + 32;
}

num converterFtoC(num f) {
  return (f - 32) * 5 / 9;
}
