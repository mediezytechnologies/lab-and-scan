import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mediezy_lab_scan/domain/core/error/error_model.dart';
import 'package:mediezy_lab_scan/domain/home/contact_us/contact_us_repository.dart';
import 'package:mediezy_lab_scan/domain/home/contact_us/model/contact_us_model.dart';
import '../../core/api_end_points.dart';
import '../../core/token/token.dart';

@LazySingleton(as: ContactUsRepository)
class ContactUsRepoImpl implements ContactUsRepository {
  @override
  Future<Either<ErrorModel, ContactUsModel>> contactUsRepo(
      {required String email, required String message}) async {
    String? id = GetLocalStorage.getUserIdAndToken("id");
    String? token = GetLocalStorage.getUserIdAndToken('token');
    try {
      final response = await Dio(BaseOptions(
        contentType: 'application/x-www-form-urlencoded',
        headers: {'Authorization': 'Bearer $token'},
      )).post(
        ApiEndPoints.contactUs,
        data: {"email": email, "description": message, "UserId": id},
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = ContactUsModel.fromJson(response.data);
        Map<String, dynamic> user = {
          'token': response.data['token'],
          'id': response.data["lab"]["id"].toString(),
          'firstname': response.data["lab"]['firstname'].toString()
        };

        GetLocalStorage.saveToken(user);
        String? token = GetLocalStorage.getUserIdAndToken('token');
        String? id = GetLocalStorage.getUserIdAndToken('id');
        String? userName = GetLocalStorage.getUserIdAndToken('firstname');
        log("Token >> ${token.toString()}");
        log("login data ${response.toString()}");
        log("Id >>>> ${id.toString()}");
        log("username >>>>>>>${userName.toString()}");
        return Right(result);
      } else {
        return Left(ErrorModel());
      }
    } on DioException catch (e) {
      log(e.message!);
      log(e.error.toString());
      final err = ErrorModel.fromJson(e.response!.data);
      log("err: $err");
      return Left(err);
    }
  }
}
