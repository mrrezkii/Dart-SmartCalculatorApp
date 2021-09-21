import 'dart:io';

import 'package:smart_calculator/data_number.dart';
import 'package:smart_calculator/operation.dart';

class DoOperation implements Operation {
  final DataNumber dataNumber;

  DoOperation(this.dataNumber);

  @override
  double addition() {
    return dataNumber.a + dataNumber.b;
  }

  @override
  double subtraction() {
    return dataNumber.a - dataNumber.b;
  }

  @override
  double multiplied() {
    return dataNumber.a * dataNumber.b;
  }

  @override
  double division() {
    return dataNumber.a / dataNumber.b;
  }

  @override
  double heighestCommonFactor() {
    return findHCF(dataNumber.a, dataNumber.b);
  }

  @override
  double lowestCommonMultiple() {
    return findLCM(dataNumber.a, dataNumber.b);
  }

  double findHCF(double a, double b) {
    if (a == 0) {
      return b;
    }
    if (b == 0) {
      return a;
    }
    if (a == b) {
      return a;
    }
    if (a > b) {
      return findHCF(a - b, b);
    }
    return findHCF(a, b - a);
  }

  double findLCM(double a, double b) {
    return (a / findHCF(a, b)) * b;
  }
}
