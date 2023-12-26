// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:imperio_app/features/home/model/sports_model.dart';

import 'package:imperio_app/features/services/dio_services.dart';

class PostController {
  final DioManager dioManager;

  PostController({
    required this.dioManager,
  });
  String? _errorLoadingPost;
  String? get getErrorLoadingPost => _errorLoadingPost;
  bool isLoading = true;
  late List<SportsModel> _loadedPost;
  List<SportsModel> get getLoadedPost => _loadedPost;

  Future<void> onLoadPost (String path, {
    dynamic data,
    
  }) async {
    isLoading = true;
    _errorLoadingPost = null;

    try {
      final post = await dioManager.getRequest(path);
      _loadedPost = post;
    } catch(error) {
      error;
    }
    isLoading = false;
  }
}
