// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:imperio_app/features/home/model/sports_model.dart';


import 'package:imperio_app/features/services/env.dart';

class DioManager {
  
  final Dio _dio;
  DioManager({
    required Dio dio,
  }) : _dio = dio;
  Future<List<SportsModel>> getRequest(String path, 
    
    
  ) async {
    final url = '${Env.apiUrl}/$path';    
    final response = await _dio.get<List>(url);
    debugPrint('${response.statusCode} ${response.data}');

    return response.data!.map((e) => SportsModel.fromMap(e)).toList();
  }

  Future<Response> deleteRequest(String path, {
    dynamic data,
    
  }) async {
    final url = '${Env.apiUrl}/$path';    
    final response = await _dio.delete(url);
    debugPrint('${response.statusCode} ${response.data}');

    return response;
  }

  Future<Response> postRequest(
    String path, {
    dynamic data,
    
  }) async {
    final url = '${Env.apiUrl}/$path';
    

    final response = await _dio.post(url);
    debugPrint('${response.statusCode} ${response.data}');

    return response;
  }

}