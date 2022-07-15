import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:payroll_app/models/auth/current_user.dart';
import 'package:payroll_app/models/auth/user_login.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:payroll_app/services/secure_storage.dart';

class AuthService {
  static final options = BaseOptions(
      baseUrl: 'http://10.10.20.174:8000/api',
      connectTimeout: 5000,
      receiveTimeout: 3000);

  final Dio _dio = Dio(options);

  final SecureStorage secureStorage = SecureStorage();

  Future<Userlogin?> login(
      {required String email, required String password}) async {
    Userlogin? userlogin;

    Map<String, dynamic> formData = {"email": email, "password": password};

    try {
      Response userData =
          await _dio.post('/login', data: json.encode(formData));
      debugPrint('userData : ${userData.toString()}');
      // debugPrint('usedata :  ${userData.data.toString()}');

      userlogin = Userlogin.fromJson(userData.data);

      secureStorage.writeSecureData(key: 'token', value: userlogin.token);
    } on DioError catch (e) {
      debugPrint('Error : ${e.error.toString()}');
      // debugPrint(e.response.toString());
    }

    return userlogin;
  }

  Future<CurrentUser?> fetchCurrentUser({required String token}) async {
    CurrentUser? currentUser;
    try {
      // debugPrint('token from fetchcurrentuser : $token');
      Response response = await _dio.get('/user',
          options: Options(headers: {'Authorization': 'Bearer $token'}));

      debugPrint('current user : ${response.data.toString()}');
      currentUser = CurrentUser.fromJson(response.data['data'][0]);
    } on DioError catch (e) {
      debugPrint('Error : ${e.response.toString()}');
    }

    return currentUser;
  }
}
