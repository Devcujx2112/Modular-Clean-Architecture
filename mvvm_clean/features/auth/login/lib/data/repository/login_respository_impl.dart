import 'package:dartz/dartz.dart';
import 'package:domain/model/failure.dart';
import 'package:login/data/mapper/login_mapper.dart';
import 'package:login/data/remote/login_remote_data_source.dart';
import 'package:login/data/request/login_request.dart';
import 'package:login/domain/modal/login_modal.dart';
import 'package:login/domain/repository/login_reponsitory.dart';

class LoginRespositoryImpl implements LoginRepository {
  final LoginRemoteDataSource loginRemoteDataSource;

  LoginRespositoryImpl({required this.loginRemoteDataSource});

  @override
  Future<Either<Failure, LoginModal>> login(LoginRequest loginResquest) async {
    final result = await loginRemoteDataSource.login(loginResquest);
    return result.fold(
      (failure) => Left(failure),
      (response) => Right(response.toDomain()),
    );
  }
}
