import 'package:dartz/dartz.dart';
import '../../core/error/error_model.dart';
import 'model/update_user_model.dart';

abstract class UpdateUserRepository {
  Future<Either<ErrorModel, UpdateUserModel>> updateUserRepo(
    String? imagePath,
    String? name,
    String? phoneNumber,
    String? address,
    String? location,
  );
}
