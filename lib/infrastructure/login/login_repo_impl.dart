// ignore_for_file: unused_catch_clause, deprecated_member_use

import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:mediezy_lab_scan/domain/core/error/error_model.dart';
import 'package:mediezy_lab_scan/domain/login/login_repository.dart';
import 'package:dio/dio.dart';
import 'package:mediezy_lab_scan/domain/login/model/login_model.dart';
import 'package:mediezy_lab_scan/infrastructure/core/api_end_points.dart';
import 'package:mediezy_lab_scan/infrastructure/core/token/token.dart';

@LazySingleton(as: LoginRepository)
class LoginRepoImpl implements LoginRepository {
  @override
  Future<Either<ErrorModel, LoginModel>> login(
      {required String email, required String password}) async {
    try {
      final response = await Dio(BaseOptions(
        contentType: 'application/x-www-form-urlencoded',
      )).post(
        ApiEndPoints.login,
        data: {
          "email": email,
          "password": password,
        },
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = LoginModel.fromJson(response.data);
        Map<String, dynamic> user = {
          'token': response.data['token'],
          'id': response.data["lab"]["id"].toString(),
          'firstname':response.data["lab"]['firstname'].toString()
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
    } on DioError catch (e) {
      log(e.message!);
      log(e.error.toString());
      final err = ErrorModel.fromJson(e.response!.data);
      log("err: $err");
      return Left(err);
    }
  }
}
