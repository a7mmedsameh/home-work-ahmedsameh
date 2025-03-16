import 'dart:io';

void main() {
  print("Enter a number");
  int num1 = int.parse(stdin.readLineSync()!);
  if (num1 > 0) {
    print("the number $num1 is positive");
  } else if (num1 < 0) {
    print("the number $num1 is negative");
  } else {
    print("the number $num1 is Zero");
  }
}
