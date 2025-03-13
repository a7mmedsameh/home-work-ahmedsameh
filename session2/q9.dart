import 'dart:io';

void main() {
  print("Enter month ( 1 to 12 )");
  int month = int.parse(stdin.readLineSync()!);

  switch (month) {
    case 1:
    case 2:
    case 12:
      print("it's Winter");
      break;

    case 3:
    case 4:
    case 5:
      print("it's Spring");
      break;

    case 6:
    case 7:
    case 8:
      print("it's summer");
      break;

    case 9:
    case 10:
    case 11:
      print("it's autumn");
      break;
    default:
      print("Please enter a valid month number");
  }
}
