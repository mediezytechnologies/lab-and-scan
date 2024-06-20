import 'package:dartz/dartz.dart';
import '../../core/error/error_model.dart';
import 'model/up_coming_lab_detail.dart';

abstract class GetUpcomingRepository {
  Future<Either<ErrorModel, List<UpComingLabDetail>>> getUpComingRepo();
}
