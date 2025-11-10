import 'package:data/error_handler/app_strings.dart';

class ResponseMessage {
  static const String success = AppString.success;
  static const String noContent = AppString.noContent;
  static const String badRequest = AppString.badRequest;
  static const String forbidden = AppString.forbidden;
  static const String unauthorized = AppString.unauthorized;
  static const String internalServerError = AppString.internalServerError;

  //local error messages form app
  static const String connectTimeout = AppString.connectTimeout;
  static const String cancelled = AppString.cancelled;
  static const String receiveTimeout = AppString.receiveTimeout;
  static const String sendTimeout = AppString.sendTimeout;
  static const String cacheError = AppString.cacheError;
  static const String noInternetConnection = AppString.noInternetConnection;
  static const String defaultError = AppString.defaultError;
}
