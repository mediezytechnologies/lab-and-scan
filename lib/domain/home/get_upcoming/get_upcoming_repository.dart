import 'package:dartz/dartz.dart';
import '../../core/error/error_model.dart';
import 'get_up_coming_model/up_coming_lab_detail.dart';

abstract class GetUpcomingRepository {
  Future<Either<ErrorModel, List<UpComingLabDetail>>> getUpComingRepo();
}
