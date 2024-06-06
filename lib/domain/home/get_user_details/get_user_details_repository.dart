import 'package:dartz/dartz.dart';
import 'package:mediezy_lab_scan/domain/core/error/error_model.dart';
import 'package:mediezy_lab_scan/domain/home/get_user_details/model/testdetail.dart';

abstract class GetUserDetailsRepository {
  Future<Either<ErrorModel, List<Testdetail>>> getUserDetails();
}
