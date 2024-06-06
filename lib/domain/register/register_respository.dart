import 'package:dartz/dartz.dart';
import 'package:mediezy_lab_scan/domain/core/error/error_model.dart';
import 'package:mediezy_lab_scan/domain/register/model/register_model.dart';

abstract class RegisterRepository {
  Future<Either<ErrorModel, RegisterModel>> register(
      {required String labName,
      required String email,
      required String mobileNumber,
      required String password,
      required String address,
      required String location,
      // String? imagePath,
      required int type});
}
