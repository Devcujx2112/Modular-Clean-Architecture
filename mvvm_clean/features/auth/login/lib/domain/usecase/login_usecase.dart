import 'package:dartz/dartz.dart';
import 'package:domain/model/failure.dart';
import 'package:domain/usecase/base_usecase.dart';
import 'package:login/data/request/login_request.dart';
import 'package:login/domain/modal/login_modal.dart';
import 'package:login/domain/repository/login_reponsitory.dart';

class LoginUsecase implements BaseUseCase<LoginRequest, LoginModal> {
  final LoginRepository _loginRepository;

  LoginUsecase(this._loginRepository);
  @override
  Future<Either<Failure, LoginModal>> execute(LoginRequest input) async {
    return _loginRepository.login(input);
  }
}
