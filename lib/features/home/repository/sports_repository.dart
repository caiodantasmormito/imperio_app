import 'package:imperio_app/features/home/model/championships_model.dart';
import 'package:imperio_app/features/home/model/sports_model.dart';

abstract class ISportsRepository {
  Future<List<SportsModel>> sports();
  Future<List<ChampionshipsModel>> championships();
  
}
