// the question >>

// What is the difference between var and dynamic in Dart? Provide an example of each.

// the answer >>

// var takes the first assigned type, meaning if you write var num1 = 15;, the var becomes int and cannot be changed. On the other hand, dynamic does not take a specific type. For example, if you write dynamic num2 = 15;, it does not become int. In other words, it remains type-flexible, which is not recommended and can also impact the application's performance.

void main() {
  var num1 = 15;
  // var = int , and It cannot be changed.
  // -------------
  dynamic num2 = 15;
  // dynamic is not int now.
  num2 = "Ahmed";
  // It has been converted to String.
}
