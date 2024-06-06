import 'package:dartz/dartz.dart';
import '../../core/error/error_model.dart';
import 'get_up_coming/up_coming_labdetail.dart';

abstract class GetUpcomingRepository {
  Future<Either<ErrorModel, List<UpComingLabdetail>>> getUpComingRepo();
}
