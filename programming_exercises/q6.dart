
void main() {
  String sentence = "Ahmed      Sameh   Elsayed   Musallam";
  print("Number of words: ${countWords(sentence)}");
}

int countWords(String sentence) {
  if (sentence.trim().isEmpty) return 0;

  List<String> words = sentence.trim().split(RegExp(r'\s+'));
  return words.length;
}
