import 'dart:convert';

import 'package:imperio_app/features/login/model/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper {
  static Future<UserModel> getUser() async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      return UserModel.fromJson(jsonDecode(prefs.getString('user').toString()));
    } catch (e) {

      return UserModel.fromJson(<String, dynamic>{} as String);
    }
  }
}
