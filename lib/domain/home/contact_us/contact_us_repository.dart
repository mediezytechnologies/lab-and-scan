import 'package:dartz/dartz.dart';
import '../../core/error/error_model.dart';
import 'model/contact_us_model.dart';

abstract class ContactUsRepository{
   Future<Either<ErrorModel, ContactUsModel>> contactUsRepo(
      {required String email, required String message});
}