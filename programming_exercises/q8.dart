void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  print("Sum of list elements: ${sumList(numbers)}");
}

int sumList(List<int> numbers) {
  return numbers.fold(0, (a, b) => a + b);
}
