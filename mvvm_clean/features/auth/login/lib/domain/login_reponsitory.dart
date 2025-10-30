import 'package:dartz/dartz.dart';
import 'package:domain/model/failure.dart';
import 'package:login/data/request/login_request.dart';
import 'package:login/domain/modal/login_modal.dart';

abstract class LoginRepository {
  Future<Either<Failure, LoginModal>> login(LoginRequest loginResquest);
}
