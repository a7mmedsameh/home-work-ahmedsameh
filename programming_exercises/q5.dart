void main() {
  String sentence = "Ahmed Sameh Elsayed Musallam Muhammed Essawy";
  print("The longest word is: ${longestWord(sentence)}");
}

String longestWord(sentence) {
  if (sentence.isEmpty) return "";
  List<String> words = sentence.split(" ");
  String longestWord = words[0];
  for (String word in words) {
    if (word.length > longestWord.length) {
      longestWord = word;
    }
  }

  return longestWord;
}
