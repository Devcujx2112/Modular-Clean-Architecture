import 'package:dio/dio.dart';
import 'package:login/data/response/login_response.dart';
import 'package:retrofit/retrofit.dart';

part 'login_service.g.dart';

const String baseUrl = "https://minafarid.mocklab.io";

@RestApi(baseUrl: baseUrl)
abstract class LoginService {
  factory LoginService(Dio dio, {String baseUrl, ParseErrorLogger errorLogger}) = _LoginService;

  @POST("/customers/login")
  Future<HttpResponse<LoginResponse>> login(
    @Field("email") String email,
    @Field("password") String password,
  );
}
