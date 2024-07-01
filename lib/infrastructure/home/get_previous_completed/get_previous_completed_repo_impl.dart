import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mediezy_lab_scan/domain/core/error/error_model.dart';
import 'package:mediezy_lab_scan/domain/home/get_previous_completed/get_previous_completed_repository.dart';
import '../../../domain/home/common_completed/completed_lab_detail.dart';
import '../../../domain/home/common_completed/get_completed_model.dart';
import '../../core/api_end_points.dart';
import '../../core/token/token.dart';

@LazySingleton(as: GetPreviousCompletedRepository)
class GetPreviousCompletedRepoImpl implements GetPreviousCompletedRepository {
  @override
  Future<Either<ErrorModel, List<CompletedLabDetail>>> getPreviousCompletedRepo(
      {required String selectedDate}) async {
    String? id = GetLocalStorage.getUserIdAndToken("id");
    String? token = GetLocalStorage.getUserIdAndToken('token');
    try {
      final response = await Dio(BaseOptions(
        headers: {'Authorization': 'Bearer $token'},
        contentType: 'application/json',
      )).post(
        ApiEndPoints.getPreviousCompleted,
        data: {
          "lab_id": id,
          "date": selectedDate,
        },
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = GetCompletedModel.fromJson(response.data);
        log("get previous completed result :  ${result.completedLabDetails}");
        return Right(result.completedLabDetails!);
      } else {
        return Left(ErrorModel());
      }
    } on DioException catch (e) {
      final err = ErrorModel.fromJson(e.response!.data);
      log("get previous completed error : $err");
      return Left(err);
    }
  }
}
