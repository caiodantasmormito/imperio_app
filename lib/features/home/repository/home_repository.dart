// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:imperio_app/features/home/model/championships_model.dart';

import 'package:imperio_app/features/home/model/sports_model.dart';
import 'package:imperio_app/features/home/repository/sports_repository.dart';
import 'package:imperio_app/features/services/env.dart';

class HomeRepository implements ISportsRepository {
  final Dio _dio;

  HomeRepository(this._dio);

  Future<List<T>> _processResponse<T>(
    Response response,
    T Function(Map<String, dynamic>) fromMap,
  ) async {
    if (response.statusCode == 200) {
      final dataList = response.data as List?;
      if (dataList != null) {
        return dataList.map((data) => fromMap(data as Map<String, dynamic>)).toList();
      } else {
        throw Exception('Erro na requisição: dados nulos');
      }
    } else {
      print('Erro na requisição: ${response.statusCode}');
      print('DATA ${response.data}');
      throw DioException(
        requestOptions: response.requestOptions,
        response: response,
      );
    }
  }

  @override
  Future<List<SportsModel>> sports() async {
    try {
      final response = await _dio.get('${Env.apiUrl}/sports');
      return _processResponse(response, (data) => SportsModel.fromMap(data));
    } catch (e) {
      if (e is DioException && e.response?.statusCode == 503) {
        print('Erro no Dio: $e');
        await _retry(() => sports());
      } else {
        print('Erro: $e');
        rethrow;
      }
    }
    return [];
  }

  @override
  Future<List<ChampionshipsModel>> championships() async {
    try {
      final response = await _dio.get('${Env.apiUrl}/championships');
      return _processResponse(response, (data) => ChampionshipsModel.fromMap(data));
    } catch (e) {
      if (e is DioException && e.response?.statusCode == 503) {
        print('Erro no Dio: $e');
        await _retry(() => championships());
      } else {
        print('Erro: $e');
        rethrow;
      }
    }
    return [];
  }

  Future<void> _retry(Future<void> Function() action,
      {int maxRetries = 3, Duration retryDelay = const Duration(seconds: 5)}) async {
    int currentRetry = 0;
    while (currentRetry < maxRetries) {
      try {
        await action();
        break; // Se a ação for bem-sucedida, saia do loop
      } catch (e) {
        if (e is DioException && e.response?.statusCode == 503) {
          print('Tentativa ${currentRetry + 1} de $maxRetries: Aguardando...');
          await Future.delayed(retryDelay);
          currentRetry++;
        } else {
          // Lidar com outros erros
          print('Erro durante a retentativa: $e');
          break; // Saia do loop em caso de erro não relacionado ao código 503
        }
      }
    }

    if (currentRetry == maxRetries) {
      // Informar ao usuário sobre a indisponibilidade temporária
      print('A ação não pôde ser concluída após várias tentativas. Tente novamente mais tarde.');
    }
  }

   
}
