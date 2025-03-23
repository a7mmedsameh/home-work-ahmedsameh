void main() {
  String sentence = "Ahmed";
  print("Reversed: ${reverseString(sentence)}");
}

String reverseString(String text) {
  return text.split('').reversed.join('');
}
