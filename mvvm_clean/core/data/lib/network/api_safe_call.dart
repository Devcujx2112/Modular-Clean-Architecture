import 'package:dartz/dartz.dart';
import 'package:domain/model/failure.dart';
import 'package:domain/model/localised_message.dart';

Future<Either<Failure, T>> safeApiCall<T>(Future<T> Function() apiCall) async {
  try {
    final response = await apiCall();
    return Right(response);
  } catch (e) {
    return Left(Failure(code: '0', message: LocalisedMessage(english: '', vietnamese: '')));
  }
}
