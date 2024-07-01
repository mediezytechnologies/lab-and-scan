import 'package:dartz/dartz.dart';
import '../../core/error/error_model.dart';
import '../common_upcoming/up_coming_detail.dart';

abstract class GetUpcomingRepository {
  Future<Either<ErrorModel, List<UpComingDetail>>> getUpComingRepo();
}
