import 'dart:ffi';

import 'package:smart_calculator/data_number.dart';

abstract class Operation {
  double addition();
  double subtraction();
  double multiplied();
  double division();
  double heighestCommonFactor();
  double lowestCommonMultiple();
}
