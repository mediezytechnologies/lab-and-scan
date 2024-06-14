import 'package:dartz/dartz.dart';
import '../../core/error/error_model.dart';
import 'model/upload_document_model.dart';

abstract class UploadDocumentRepository {
  Future<Either<ErrorModel, UploadDocumentModel>> updateUserRepo({
    String? imagePath,
    String? note,
    required String doctorId,
    required String clinicId,
    required String patientId,
    required String appointmentId,
    required int testId,
    required int isCompleteStatus,
  });
}
