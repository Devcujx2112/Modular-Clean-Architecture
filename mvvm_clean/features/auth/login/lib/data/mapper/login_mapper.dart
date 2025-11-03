import 'package:extentions/constant/constant.dart';
import 'package:extentions/extentions.dart';
import 'package:login/data/response/login_response.dart';
import 'package:login/domain/modal/login_modal.dart';

extension LoginResponseMapper on LoginResponse? {
  LoginModal toDomain() {
    return LoginModal(
      name: this?.name.orEmpty() ?? Constant.empty,
      phone: this?.phone.orEmpty() ?? Constant.empty,
      age: this?.age.orZero() ?? Constant.zero,
    );
  }
}
