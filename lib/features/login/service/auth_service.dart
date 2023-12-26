import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:imperio_app/features/login/model/auth_model.dart';
import 'package:imperio_app/features/login/model/error.dart';
import 'package:imperio_app/features/login/model/user_model.dart';
import 'package:imperio_app/features/login/pages/register_password.dart';
import 'package:imperio_app/features/login/repository/auth_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
 
  Future<void> login(
    BuildContext context,
    AuthModel auth,
    
  ) async {
    Response response;
    final prefs = await SharedPreferences.getInstance();
    response = await AuthRepository(dio: Dio()).httpPost(
      'login',
      body: auth.toServiceData(),
    ) as Response;
    prefs.clear();

    if (response.statusCode != 200) {
      final loginError = ErrorData.fromJson(jsonDecode(response.data));
      print(loginError.message);
    } else {
      final user = UserModel.fromJson(jsonDecode(response.data));
      
      prefs.setString('user', user.toString());      

      if (context.mounted) {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => const RegisterPassword(),
            ),
            (Route<dynamic> route) => route is RegisterPassword);
      }
    }
  }
}
