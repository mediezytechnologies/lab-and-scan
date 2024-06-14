import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:http_parser/http_parser.dart';
import 'package:injectable/injectable.dart';
import 'package:mediezy_lab_scan/domain/core/error/error_model.dart';
import 'package:mediezy_lab_scan/domain/home/upload_document/model/upload_document_model.dart';
import 'package:mediezy_lab_scan/domain/home/upload_document/upload_document_repository.dart';
import '../../core/api_end_points.dart';
import '../../core/token/token.dart';

@LazySingleton(as: UploadDocumentRepository)
class UploadDocumentRepoImpl implements UploadDocumentRepository {
  @override
  Future<Either<ErrorModel, UploadDocumentModel>> updateUserRepo(
      {String? imagePath,
      String? note,
      required String doctorId,
      required String clinicId,
      required String patientId,
      required String appointmentId,
      required int testId,
      required int isCompleteStatus}) async {
    String? id = GetLocalStorage.getUserIdAndToken("id");
    String? token = GetLocalStorage.getUserIdAndToken('token');
    try {
      MultipartFile? multipartFile;
      if (imagePath != null) {
        final fileExtension = imagePath.split('.').last;
        final contentType = getContentTypeFromExtension(fileExtension);

        multipartFile = await MultipartFile.fromFile(
          imagePath,
          filename: imagePath.split('/').last,
          contentType: contentType,
        );
      }
      FormData formData = FormData.fromMap({
        'lab_id': id,
        'doctor_id': doctorId,
        'clinic_id': clinicId,
        'patient_id': patientId,
        'appointment_id': appointmentId,
        'notes': note,
        'labtest_id': testId,
        'status': isCompleteStatus,
        if (multipartFile != null) 'document_upload': multipartFile,
      });
      for (var field in formData.fields) {
        log("${field.key}: ${field.value}");
      }
      final response = await Dio(BaseOptions(
        headers: {'Authorization': 'Bearer $token'},
        contentType: 'application/json',
      )).post(
        ApiEndPoints.uploadDocument,
        data: formData,
      );
      log(response.data.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = UploadDocumentModel.fromJson(response.data);
        log("register data ${response.toString()}");
        return Right(result);
      } else {
        return Left(ErrorModel());
      }
    } on DioException catch (e) {
      log("e.message!====${e.message}");
      log(e.error.toString());
      final err = ErrorModel.fromJson(e.response!.data);
      log("err: $err");
      return Left(err);
    }
  }
}

MediaType getContentTypeFromExtension(String extension) {
  switch (extension.toLowerCase()) {
    case 'jpg':
    case 'jpeg':
    case 'png':
      return MediaType('image', extension);
    case 'pdf':
      return MediaType('application', 'pdf');
    default:
      return MediaType('image', 'jpg');
  }
}
