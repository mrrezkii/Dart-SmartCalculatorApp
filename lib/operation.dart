import 'dart:ffi';

abstract class Operation {
  double addition(double a, double b) => a + b;
  double subtraction(double a, double b) => a - b;
  double multiplied(double a, double b) => a * b;
  double division(double a, double b) => a / b;
  void heighestCommonFactor(int a);
  void lowestCommonMultiple(int a);
}
