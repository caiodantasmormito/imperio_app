
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:imperio_app/features/home/controller/home_controller.dart';
import 'package:imperio_app/features/home/repository/home_repository.dart';
import 'package:imperio_app/features/home/repository/sports_repository.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(Dio());
    Get.put<ISportsRepository>(HomeRepository(Get.find()));
    Get.put(HomeController(Get.find()));
  }
}


