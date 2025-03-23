import 'dart:io';

void main() {
  print("Enter a year");
  num year = num.parse(stdin.readLineSync()!);
  if (leap_Year(year)) {
    print("$year is a leap year.");
  } else {
    print("$year is not a leap year.");
  }
}

bool leap_Year(num year) {
  if (year % 400 == 0) {
    return true;
  } else if (year % 100 == 0) {
    return false;
  } else if (year % 4 == 0) {
    return true;
  } else {
    return false;
  }
}
