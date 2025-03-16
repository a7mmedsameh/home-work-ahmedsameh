void main() {
  Animal dog = Animal();
  dog.run = "Run";
  dog.play = "play";
  dog.eat = "dogFood";
  dog.playing();
  dog.eating();

  Animal cat = Animal();
  cat.run = "Run";
  cat.play = "play";
  cat.eat = "dogFood";
  cat.playing();
  cat.eating();
}

class Animal {
  String? run;
  String? play;
  String? eat;
  void playing() {
    print("playing");
  }

  void eating() {
    print("eating");
  }
}
