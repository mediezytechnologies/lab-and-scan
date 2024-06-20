import 'package:dartz/dartz.dart';
import '../../core/error/error_model.dart';
import 'model/completed_lab_detail.dart';


abstract class GetCompletedRepository {
  Future<Either<ErrorModel, List<CompletedLabDetail>>> getUpCompletedRepo();
}
