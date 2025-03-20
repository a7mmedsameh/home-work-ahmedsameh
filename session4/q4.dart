import 'dart:io';

void main() {
  Map<String, int> fruits = {"Apple": 20, "Banana": 30, "Mango": 40};

  print("Enter fruit name:");
  String input = stdin.readLineSync()!.trim();

  int price = getPrice(
    fruits,
    input,
  );
  if (price != -1) {
    print("The price of $input is \$${price}");
  } else {
    print("Fruit not found.");
  }
}

int getPrice(Map<String, int> fruits, String fruitName) {
  return fruits[fruitName] ?? -1;
}
