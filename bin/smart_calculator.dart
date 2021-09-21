import 'package:smart_calculator/do_operation.dart';
import 'package:smart_calculator/data_number.dart';

void main(List<String> arguments) {
  var operation = DoOperation(DataNumber(15, 25));

  print(operation.addition());
  print(operation.subtraction());
  print(operation.multiplied());
  print(operation.division());
  print(operation.heighestCommonFactor());
  print(operation.lowestCommonMultiple());
}
