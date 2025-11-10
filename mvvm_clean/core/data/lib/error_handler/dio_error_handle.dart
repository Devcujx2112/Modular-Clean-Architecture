import 'package:data/data.dart';
import 'package:data/error_handler/data_source.dart';
import 'package:data/error_handler/data_source_extension.dart';

import 'package:domain/model/failure.dart';

class ErrorHandle implements Exception {
  late Failure failure;
  
  ErrorHandle.handle(dynamic error) {
    if (error is DioException) {
      failure = handleError(error);
    } else {
      failure = DataSource.defaultError.getFailure();
    }
  }
}

Failure handleError(DioException error) {
  switch (error.type) {
    case DioExceptionType.connectionTimeout:
      return DataSource.connectTimeout.getFailure();
    case DioExceptionType.sendTimeout:
      return DataSource.sendTimeout.getFailure();
    case DioExceptionType.receiveTimeout:
      return DataSource.receiveTimeout.getFailure();
    case DioExceptionType.badCertificate:
      return DataSource.defaultError.getFailure();
    case DioExceptionType.badResponse:
      return DataSource.defaultError.getFailure();
    case DioExceptionType.cancel:
      return DataSource.cancelled.getFailure();
    case DioExceptionType.connectionError:
      return DataSource.connectTimeout.getFailure();
    default:
      if(error.response == null && error.response?.statusCode == null && error.response?.statusMessage == null){
        return Failure(code: error.response?.statusCode ?? 0, message: error.response?.statusMessage ?? "");
      } else {
        return DataSource.defaultError.getFailure();
      }
  }
}
