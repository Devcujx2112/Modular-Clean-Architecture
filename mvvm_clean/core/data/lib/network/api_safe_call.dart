import 'package:dartz/dartz.dart';
import 'package:data/network_info/network_info.dart';
import 'package:domain/model/failure.dart';
import 'package:domain/model/localised_message.dart';

Future<Either<Failure, T>> safeApiCall<T>(NetworkInfo networkInfo, Future<T> Function() apiCall) async {
  if(await networkInfo.isConnected){
    try {
    final response = await apiCall();
    return Right(response);
  } catch (e) {
    return Left(Failure(code: '0', message: LocalisedMessage(english: '', vietnamese: '')));
  }
  } else {
    return Left(Failure(code: 'NO_INTERNET', message: LocalisedMessage(english: 'No internet connection', vietnamese: 'Không có kết nối internet')));
  }
}
