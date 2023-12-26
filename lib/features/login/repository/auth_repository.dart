// ignore_for_file: public_member_api_docs, sort_constructors_first


import 'package:dio/dio.dart';
import 'package:imperio_app/features/login/model/auth_model.dart';



class AuthRepository {
  final Dio _dio;
  AuthRepository({
    required Dio dio,
  }) : _dio = dio;

  
  static String API_URL = 'https://6569cc7dde53105b0dd7af5c.mockapi.io';

  Future<AuthModel?> httpPost(String path, {
    dynamic body,
    
  }) async {
    Response response;
    try {
    final url = '$API_URL/$path';   

    response = await _dio.post(url, data: body,);    

    return AuthModel.fromMap(response.data);
  } on DioException catch (e) {
    print(e);
    rethrow;
  }
}
}