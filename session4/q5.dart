void main() {
  print(
    uniqueNames(['Ahmed', 'sameh', 'Elsayed', 'Ahmed', 'sameh', 'Elsayed']),
  );
}

Set<String> uniqueNames(List<String> names) {
  return names.toSet();
}
