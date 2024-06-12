import 'package:mediezy_lab_scan/domain/core/error/error_model.dart';
import 'package:dartz/dartz.dart';
import 'package:mediezy_lab_scan/domain/auth/login/model/login_model.dart';


abstract class LoginRepository {
  Future<Either<ErrorModel, LoginModel>> login(
      {required String email, required String password});
}
