import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mediezy_lab_scan/domain/core/error/error_model.dart';
import 'package:mediezy_lab_scan/domain/home/incompleted_previous/incompleted_previous_repository.dart';
import '../../../domain/home/incompleted_previous/model/incompleted_previous_model.dart';
import '../../../domain/home/incompleted_previous/model/previous_un_completed_lab_detail.dart';
import '../../core/api_end_points.dart';
import '../../core/token/token.dart';

@LazySingleton(as: IncompletedPreviousRepository)
class IncompletedPreviousRepoImpl implements IncompletedPreviousRepository {
  @override
  Future<Either<ErrorModel, List<PreviousUnCompletedLabDetail>>>
      getInCompletedPreviousRepo({required String selectedDate}) async {
    String? id = GetLocalStorage.getUserIdAndToken("id");
    String? token = GetLocalStorage.getUserIdAndToken('token');
    try {
      final response = await Dio(BaseOptions(
        headers: {'Authorization': 'Bearer $token'},
        contentType: 'application/json',
      )).post(
        ApiEndPoints.incompletePrevious,
        data: {
          "lab_id": id,
          "date": selectedDate,
        },
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = IncompletedPreviousModel.fromJson(response.data);

        return Right(result.previousUnCompletedLabDetails!);
      } else {
        return Left(ErrorModel());
      }
    } on DioException catch (e) {
      log(e.message!);
      log(e.error.toString());
      final err = ErrorModel.fromJson(e.response!.data);
      log("err: $err");
      return Left(err);
    }
  }
}