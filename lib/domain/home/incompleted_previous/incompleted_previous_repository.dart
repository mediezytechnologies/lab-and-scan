import 'package:dartz/dartz.dart';
import '../../core/error/error_model.dart';
import 'model/previous_un_completed_lab_detail.dart';

abstract class IncompletedPreviousRepository {
  Future<Either<ErrorModel, List<PreviousUnCompletedLabDetail>>> getInCompletedPreviousRepo(
      {required String selectedDate});
}