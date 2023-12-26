// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:imperio_app/features/home/controller/home_controller.dart';
import 'package:imperio_app/features/home/model/championships_model.dart';
import 'package:imperio_app/features/home/model/sports_model.dart';

class HomePage extends GetWidget<HomeController> {
  HomePage({Key? key}) : super(key: key);

  final PageController pageCtrl1 = PageController(viewportFraction: 0.85);
  final PageController pageCtrl2 = PageController(viewportFraction: 0.95);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IMPÉRIO'),
        centerTitle: true,
      ),
      body: controller.obx(
        (state) {
          //final sportsList = state.whereType<SportsModel>().toList();
          final championshipsList =
              state.whereType<ChampionshipsModel>().toList();

          return ListView(
            scrollDirection: Axis.vertical,
            children: [
              const SizedBox(height: 30),
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  controller: pageCtrl1,
                  itemCount: 4,
                  itemBuilder: (_, index) {
                    final ChampionshipsModel sports = championshipsList[index];
                    print('URL da imagem: ${sports.image}');
                    return AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      margin: const EdgeInsets.only(right: 4),
                      width: MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: NetworkImage(sports.image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 30),
              const Padding(
                padding: EdgeInsets.only(left: 32.0),
                child: Text(
                  'CAMPEONATOS POPULARES',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.07,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  controller: pageCtrl2,
                  itemCount: championshipsList.length,
                  itemBuilder: (_, index) {
                    final ChampionshipsModel championship =
                        championshipsList[index];
                    return AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      margin: const EdgeInsets.only(right: 4),
                      width: MediaQuery.of(context).size.width * 0.2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: NetworkImage(championship.image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
        onError: (error) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(error.toString()),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: () => controller.findAll(),
                  child: const Text('Tentar novamente'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
