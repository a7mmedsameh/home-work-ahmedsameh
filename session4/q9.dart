import 'dart:io';

void main() {
  print("Enter width");
  num width = num.parse(stdin.readLineSync()!);
  print("Enter height");
  num height = num.parse(stdin.readLineSync()!);
  Rectangle rect = Rectangle(width, height);
  print("Area: ${rect.area}");
}

class Rectangle {
  num _width;
  num _height;
  Rectangle(this._width, this._height);
  num get area => _width * _height;
}
