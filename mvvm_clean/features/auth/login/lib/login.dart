import 'package:data/data.dart';
import 'package:datastore/provider/SessionProviderImpl.dart';

/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
  var session = DevSessionProviderImpl();
  Dio dio = Dio();
}
