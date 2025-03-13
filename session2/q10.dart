import 'dart:io';

void main() {
  print('Enter score');

  String? input = stdin.readLineSync();

  int? score = input!.isEmpty ? null : int.parse(input);

  print(score ?? 'No score');
}
