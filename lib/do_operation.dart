import 'data_number.dart';
import 'operation.dart';

class DoOperation implements Operation {
  final DataNumber dataNumber;

  DoOperation(this.dataNumber);

  @override
  double addition() => dataNumber.a + dataNumber.b;

  @override
  double subtraction() => dataNumber.a - dataNumber.b;

  @override
  double multiplied() => dataNumber.a * dataNumber.b;

  @override
  double division() => dataNumber.a / dataNumber.b;

  @override
  double highestCommonFactor() => _findHCF(dataNumber.a, dataNumber.b);

  @override
  double lowestCommonMultiple() => _findLCM(dataNumber.a, dataNumber.b);

  double _findHCF(double a, double b) {
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
      return _findHCF(a - b, b);
    }
    return _findHCF(a, b - a);
  }

  double _findLCM(double a, double b) {
    return (a / _findHCF(a, b)) * b;
  }
}
