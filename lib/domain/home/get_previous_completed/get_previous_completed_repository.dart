import 'package:dartz/dartz.dart';
import '../../core/error/error_model.dart';
import 'model/previous_completed_lab_detail.dart';

abstract class GetPreviousCompletedRepository {
  Future<Either<ErrorModel, List<PreviousCompletedLabDetail>>> getPreviousCompletedRepo(
      {required String selectedDate});
}
