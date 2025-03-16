import 'dart:io';

void main() {
  List<String> items = [];

  while (true) {
    print("Add item ( 1 )");
    print("Remove item ( 2 )");
    print("All items ( 3 )");
    print("Exit ( 4 )");

    String? choice = stdin.readLineSync();

    if (choice == '1') {
      print("Enter a item");

      String? item = stdin.readLineSync();

      if (item != null && item.isNotEmpty) {
        items.add(item);
        print("done Added ${item}");
      } else {
        print("item is Error");
      }
    } else if (choice == '2') {
      if (items.isEmpty) {
        print("the list is empty");
        continue;
      }

      print("enter a item");
      String? input = stdin.readLineSync();
      if (input != null && items.contains(input)) {
        items.remove(input);
        print("done delete $input");
      } else {
        print("The item does not exist");
      }
    } else if (choice == '3') {
      print(groceryItems(items: items));
    } else if (choice == '4') {
      print("Exit done");
      break;
    } else {
      print("Invalid selection");
    }
  }
}

List<String> groceryItems({required List<String> items}) {
  if (items.isEmpty) {
    return ["The list is empty"];
  }

  for (String item in items) {
    print(item);
  }

  return items;
}
