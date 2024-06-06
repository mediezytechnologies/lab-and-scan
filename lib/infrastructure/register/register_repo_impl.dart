// ignore_for_file: deprecated_member_use

import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mediezy_lab_scan/domain/core/error/error_model.dart';
import 'package:mediezy_lab_scan/domain/register/model/register_model.dart';
import 'package:mediezy_lab_scan/domain/register/register_respository.dart';
import 'package:http_parser/http_parser.dart';
import 'package:mediezy_lab_scan/infrastructure/core/api_end_points.dart';

@LazySingleton(as: RegisterRepository)
class RegisterRepoImpl implements RegisterRepository {
  @override
  Future<Either<ErrorModel, RegisterModel>> register(
      {required String labName,
      required String email,
      required String mobileNumber,
      required String password,
      required String address,
      required String location,
      // String? imagePath,
      required int type}) async {
    try {
      // MultipartFile? multipartFile;
      // if (imagePath != null) {
      //   multipartFile = await MultipartFile.fromFile(
      //     imagePath,
      //     filename: imagePath,
      //     contentType: MediaType('image', 'jpg'),
      //   );
     // }

      FormData formData = FormData.fromMap({
        'firstname': labName,
        'lab_image': 'https://test.mediezy.com/LabImages/images/1717654032_Screenshot_1717138319.png',
        'mobileNo': mobileNumber,
        'email': email,
        'address': address,
        'password': password,
        'location': location,
        'Type': type
      });

      for (var field in formData.fields) {
        log("${field.key}: ${field.value}");
      }
      final response = await Dio(BaseOptions(
        contentType: 'application/json',
      )).post(
        ApiEndPoints.register,
        data: formData,
      );

      log(response.data.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = RegisterModel.fromJson(response.data);
        log("register data ${response.toString()}");
        return Right(result);
      } else {
        return Left(ErrorModel());
      }
    } on DioError catch (e) {
      log("e.message!====${e.message}");
      log(e.error.toString());
      final err = ErrorModel.fromJson(e.response!.data);
      log("err: $err");
      return Left(err);
    }
  }
}
