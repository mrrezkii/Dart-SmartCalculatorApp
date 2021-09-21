import 'package:smart_calculator/data_number.dart';
import 'package:smart_calculator/operation.dart';

class AdvancedOperation extends Operation {
  final DataNumber dataNumber;

  AdvancedOperation(this.dataNumber);

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
  int heighestCommonFactor() {
    // TODO: implement heighestCommonFactor
    throw UnimplementedError();
  }

  @override
  int lowestCommonMultiple() {
    // TODO: implement lowestCommonMultiple
    throw UnimplementedError();
  }
}
