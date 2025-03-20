import 'dart:io';

void main() {
  print("Enter your salary:");
  int salary = int.parse(stdin.readLineSync()!);

  print("Enter years worked:");
  int yearsWorked = int.parse(stdin.readLineSync()!);

  double bonus = calculateBonus(salary, yearsWorked);
  print("Your bonus is: $bonus");
}

calculateBonus(int salary, int yearsWorked) {
  double bonus;
  if (yearsWorked >= 5) {
    bonus = salary * 10 / 100;
  } else {
    bonus = salary * 5 / 100;
  }
  return bonus;
}
