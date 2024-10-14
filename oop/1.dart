import 'dart:math';

abstract class Shape {
  double area();
  double perimeter();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() => pi * pow(radius, 2);

  @override
  double perimeter() => 2 * pi * radius;
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double area() => width * height;

  @override
  double perimeter() => (width + height) * 2;
}

class Triangle extends Shape {
  double a;
  double b;
  double c;

  Triangle(this.a, this.b, this.c);

  @override
  double area() {
    // p is half the perimeter
    double p = perimeter() / 2;

    // Heron's formula
    return sqrt(p * (p - a) * (p - b) * (p - c));
  }

  @override
  double perimeter() => a + b + c;
}

void main() {
  final circle = new Circle(5);
  print("Area of circle is ${circle.area()}");
  print("Perimeter of circle is ${circle.perimeter()}");

  final rect = new Rectangle(3, 4);
  print("Area of rectangle is ${rect.area()}");
  print("Perimeter of rectangle is ${rect.perimeter()}");

  final trian = new Triangle(3, 4, 5);
  print("Area of triangle is ${trian.area()}");
  print("Perimeter of triangle is ${trian.perimeter()}");
}
