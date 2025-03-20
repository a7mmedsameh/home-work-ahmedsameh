void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  numbers.forEach((i) {
    if (i % 2 == 0) {
      print("$i is Even");
    } else {
      print(" $i is Odd");
    }
  });
}
