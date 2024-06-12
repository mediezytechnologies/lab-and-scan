import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mediezy_lab_scan/domain/core/error/error_model.dart';
import 'package:mediezy_lab_scan/domain/home/get_user_details/get_user_details_repository.dart';
import 'package:mediezy_lab_scan/domain/home/get_user_details/model/get_user_details_model.dart';
import 'package:mediezy_lab_scan/infrastructure/core/api_end_points.dart';
import 'package:mediezy_lab_scan/infrastructure/core/token/token.dart';

import '../../../domain/home/get_user_details/model/testdetail.dart';

@LazySingleton(as: GetUserDetailsRepository)
class GetUserRepoImpl implements GetUserDetailsRepository {
  @override
  Future<Either<ErrorModel, List<Testdetail>>> getUserDetails() async {
    String? id = GetLocalStorage.getUserIdAndToken("id");
    String? token = GetLocalStorage.getUserIdAndToken('token');
    try {
      var response = await Dio(BaseOptions(
        headers: {'Authorization': 'Bearer $token'},
        contentType: 'application/json',
      )).get(
        "${ApiEndPoints.getUserDetails}$id",
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = GetUserDetailsModel.fromJson(response.data);

        return right(result.testdetails!);
      } else {
        return Left(
          ErrorModel(),
        );
      }
    } on DioException catch (e) {
      final err = ErrorModel.fromJson(e.response!.data);
      return Left(err);
    }
  }
}
