import 'package:dartz/dartz.dart';
import '../../core/error/error_model.dart';
import 'model/completed_labdetail.dart';

abstract class GetCompletedRepository {
  Future<Either<ErrorModel, List<CompletedLabdetail>>> getUpCompletedRepo();
}
