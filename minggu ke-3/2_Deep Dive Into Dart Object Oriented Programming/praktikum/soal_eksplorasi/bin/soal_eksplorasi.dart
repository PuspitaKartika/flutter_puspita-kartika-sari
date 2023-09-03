abstract class Shape {
  int getArea();
  int getPerimeter();
}

class Circle implements Shape {
  int radius;

  Circle(this.radius);

  @override
  int getArea() {
    return (3.14 * radius * radius).toInt(); // Area lingkaran = π * r^2
  }

  @override
  int getPerimeter() {
    return (2 * 3.14 * radius).toInt(); // Keliling lingkaran = 2 * π * r
  }
}

class Square implements Shape {
  int side;

  Square(this.side);

  @override
  int getArea() {
    return (side * side); // Area persegi = s^2
  }

  @override
  int getPerimeter() {
    return (4 * side); // Keliling persegi = 4 * s
  }
}

class Rectangle implements Shape {
  int width;
  int height;

  Rectangle(this.width, this.height);

  @override
  int getArea() {
    return (width * height); // Area persegi panjang = panjang * lebar
  }

  @override
  int getPerimeter() {
    return (2 *
        (width + height)); // Keliling persegi panjang = 2 * (panjang + lebar)
  }
}

void main() {
  Circle circle = Circle(5);
  int circleArea = circle.getArea();
  int circlePerimeter = circle.getPerimeter();
  print('Circle Area: $circleArea');
  print('Circle Perimeter: $circlePerimeter');

  Square square = Square(4);
  int squareArea = square.getArea();
  int squarePerimeter = square.getPerimeter();
  print('Square Area: $squareArea');
  print('Square Perimeter: $squarePerimeter');

  Rectangle rectangle = Rectangle(6, 8);
  int rectangleArea = rectangle.getArea();
  int rectanglePerimeter = rectangle.getPerimeter();
  print('Rectangle Area: $rectangleArea');
  print('Rectangle Perimeter: $rectanglePerimeter');
}
