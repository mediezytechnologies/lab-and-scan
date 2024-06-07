import 'package:mediezy_lab_scan/infrastructure/core/base_url.dart';

class ApiEndPoints {
  static const login = "$loginBaseUrl/auth/login";
  static const register = "$baseUrl/LabRegister";
  static const getUserDetails = "$baseUrl/getLabUserdetails/";
  static const getUpComing = "$baseUrl/getUpComingLabdetails/";
  static const getCompleted = "$baseUrl/getCompletedLabdetails/";
}
