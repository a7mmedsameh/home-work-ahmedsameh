void main() {
Map<String, dynamic> student = {
"name": "Ahmed Sameh",
"age": 22,
"grade": "A",
};

student["city"] = ["Cairo"];
print("After Add city $student");

student["age"] = 22;
print("After Add age $student");

student.remove("grade");
print("After Remove $student");

  student.forEach((key, value) {
    print("$key: $value");
  });}

