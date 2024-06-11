import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mediezy_lab_scan/domain/core/error/error_model.dart';
import 'package:mediezy_lab_scan/domain/home/get_upcoming/get_upcoming_repository.dart';
import '../../../domain/home/get_upcoming/model/get_up_coming.dart';
import '../../../domain/home/get_upcoming/model/up_coming_labdetail.dart';
import '../../core/api_end_points.dart';
import '../../core/token/token.dart';

@LazySingleton(as: GetUpcomingRepository)
class GetUpcomingRepoImpl implements GetUpcomingRepository {
  @override
  Future<Either<ErrorModel, List<UpComingLabdetail>>> getUpComingRepo() async {
    String? id = GetLocalStorage.getUserIdAndToken("id");
    String? token = GetLocalStorage.getUserIdAndToken('token');

    try {
      var response = await Dio(BaseOptions(
        headers: {'Authorization': 'Bearer $token'},
         contentType: 'application/json',
      )).get(
        "${ApiEndPoints.getUpComing}$id",
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = GetUpComing.fromJson(response.data);
        return right(result.upComingLabdetails!);
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
