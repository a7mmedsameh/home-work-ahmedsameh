void main() {
  Person ahmed = Person(name: "Ahmed", age: 22, isStudent: true);
  ahmed.displayInfo();

  Person sameh = Person(name: "Sameh");
  sameh.displayInfo();
}

class Person {
  String name;
  int? age;
  bool isStudent;
  Person({required this.name, this.age, this.isStudent = false});
  void displayInfo() {
    if (age != null) {
      print("Name: $name , age: $age ,Student (True/False): $isStudent");
    } else {
      print("Name: $name ,Student (True/False): $isStudent");
    }
  }
}
