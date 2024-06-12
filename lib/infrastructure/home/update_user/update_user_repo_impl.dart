import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:http_parser/http_parser.dart';
import 'package:injectable/injectable.dart';
import 'package:mediezy_lab_scan/domain/core/error/error_model.dart';
import 'package:mediezy_lab_scan/domain/home/update_user/model/update_user_model.dart';
import 'package:mediezy_lab_scan/domain/home/update_user/update_user_repository.dart';
import '../../core/api_end_points.dart';
import '../../core/token/token.dart';

@LazySingleton(as: UpdateUserRepository)
class UpdateUserRepoImpl implements UpdateUserRepository {
  @override
  Future<Either<ErrorModel, UpdateUserModel>> updateUserRepo(
    String? imagePath,
    String? name,
    String? phoneNumber,
    String? address,
    String? location,
  ) async {
    String? id = GetLocalStorage.getUserIdAndToken("id");
    String? token = GetLocalStorage.getUserIdAndToken('token');
    try {
      MultipartFile? multipartFile;
      if (imagePath != null) {
        multipartFile = await MultipartFile.fromFile(
          imagePath,
          filename: imagePath,
          contentType: MediaType('image', 'jpg'),
        );
      }
      FormData formData = FormData.fromMap({
        'lab_id': id,
        'firstname': name,
        if (multipartFile != null) 'lab_image': multipartFile,
        'mobileNo': phoneNumber,
        'address': address,
        'location': location,
      });
      for (var field in formData.fields) {
        log("${field.key}: ${field.value}");
      }
      final response = await Dio(BaseOptions(
        headers: {'Authorization': 'Bearer $token'},
        contentType: 'application/json',
      )).post(
        ApiEndPoints.updateUser,
        data: formData,
      );
      log(response.data.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = UpdateUserModel.fromJson(response.data);
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
