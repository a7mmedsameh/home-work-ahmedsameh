import 'dart:io';

void main() {
  print("Write your grade");
  int marks = int.parse(stdin.readLineSync()!);
  if (marks >= 70) {
    print("Passed");
  } else {
    print("Failed");
  }
}
