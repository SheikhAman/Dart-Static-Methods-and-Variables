// Objecctives
// 1. Static Methods  and Variables
// we can convert instance variable  using static keyword ahead of its data type
// you can access static variable with the help of class object
// static variable akbar memeory use kore  bar bar reuse korbe tar vlue, it only uses memory once
// you cannot change const value , in this way you can avoid  somme mishappening by some other divlopers who touches your code
// static members are memory efficient
void main() {
  var circle = Circle(); //  created  Circle() object
/*  circle.pi; */ // you can access static variable or member with the help of class object
  /* circle.calculateArea(); */
  // Circle.pi = 5.2;  // because the  value is const you cannot change the value of static variable
  print(Circle
      .pi); // calling static variable using class_name.static_variable_name
  Circle
      .claculateArea(); // calling static method using class_name.static_method_name
  circle.myNormalFucntion();
}

class Circle {
  static const double pi =
      3.14; // static variable has nothing to do with class objects // it is within the class // and you have to access it with class name correctly
  static int maxRadius = 5;
  late String color;
  static void claculateArea() {
    pi;
    print('Some code to calculate area of Circle');
    /*  myNormalFunction(); */ // not allowed to  call instace function //  static method a class r vitor r function gulo ke call kora jai na
    // this.color; // you cannot access instace variable and even cannot use 'this' keyword in static function
  }

  void myNormalFucntion() {
    claculateArea(); //or Circle.calculateArea()  // normal function  a  static method ke call kora jai
    this.color = 'Red';
    print(color);
    print(pi); // or Circle.pi;
    print(maxRadius); // or Circle.maxRadius;
  }

  static void anotherStaticMethod() {
    pi; // you can only access static method and static variables
    claculateArea(); // in static method you cannot access normal instace variable and method  of the class
  }
}
