// ignore_for_file: avoid_print

import 'package:get/get.dart';
import 'package:imperio_app/features/home/repository/sports_repository.dart';

class HomeController extends GetxController with StateMixin {
  final ISportsRepository _dioRepository;

  HomeController(this._dioRepository);

  @override
  void onInit() {
    super.onInit();
    findAll();
  }

  Future<void> findAll() async {
    change([], status: RxStatus.loading());

    await _dioRepository.sports()
      .then((dados) => _handleData(dados, 'Lista de esportes vazia'))
      .catchError((e) {
        print(e);
        change([], status: RxStatus.error('Erro ao buscar dados'));
      });

    await _dioRepository.championships()
      .then((dadosChampionships) => _handleData(dadosChampionships, 'Lista de campeonatos vazia'))
      .catchError((e) {
        print(e);
        change([], status: RxStatus.error('Erro ao buscar dados'));
      });
  }

  void _handleData<T>(List<T> data, String emptyMessage) {
    if (data.isNotEmpty) {
      change(data, status: RxStatus.success());
    } else {
      change([], status: RxStatus.empty());
    }
  }
}
