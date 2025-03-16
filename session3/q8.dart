import 'dart:io';

void main() {
  print("Enter a number");
  int num1 = int.parse(stdin.readLineSync()!);
  if (num1 >= 5 && num1 <= 20) {
    print("${num1} number is within a specified range ( 5 : 20 )");
  } else {
    print("The number is out of range ( 5 : 20 )");
  }
}
