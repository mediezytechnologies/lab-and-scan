import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mediezy_lab_scan/domain/core/error/error_model.dart';
import 'package:mediezy_lab_scan/domain/home/get_completed/get_completed_repository.dart';
import '../../../domain/home/common_completed/completed_lab_detail.dart';
import '../../../domain/home/common_completed/get_completed_model.dart';
import '../../core/api_end_points.dart';
import '../../core/token/token.dart';

@LazySingleton(as: GetCompletedRepository)
class GetCompletedRepoImpl implements GetCompletedRepository {
  @override
  Future<Either<ErrorModel, List<CompletedLabDetail>>>
      getUpCompletedRepo() async {
    String? id = GetLocalStorage.getUserIdAndToken("id");
    String? token = GetLocalStorage.getUserIdAndToken('token');
    try {
      var response = await Dio(BaseOptions(
        headers: {'Authorization': 'Bearer $token'},
        contentType: 'application/json',
      )).get(
        "${ApiEndPoints.getCompleted}$id",
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = GetCompletedModel.fromJson(response.data);
        log("get completed result :  ${result.completedLabDetails}");
        return right(result.completedLabDetails!);
      } else {
        return Left(
          ErrorModel(),
        );
      }
    } on DioException catch (e) {
      final err = ErrorModel.fromJson(e.response!.data);
      log("get completed result : $err");
      return Left(err);
    }
  }
}
