import 'dart:io';

void main() {
  print("Enter your name");
  String name = stdin.readLineSync()!;
  print("Enter your age");
  int age = int.parse(stdin.readLineSync()!);
  print("Enter your height");
  double height = double.parse(stdin.readLineSync()!);
  print("Are you a student? (true/false):");
  bool student = stdin.readLineSync()!.toLowerCase() == "true";

  print(
    "Your name: $name , your Age: $age , Your height: $height , You are student? $student",
  );
}
