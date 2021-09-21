import 'package:smart_calculator/advanced_operation.dart';
import 'package:smart_calculator/data_number.dart';

void main(List<String> arguments) {
  var operation = AdvancedOperation(DataNumber(1, 3));

  print(operation.addition());
  print(operation.subtraction());
  print(operation.multiplied());
  print(operation.division());
}
