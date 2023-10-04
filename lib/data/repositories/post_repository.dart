import 'dart:math';

import 'package:dio/dio.dart';
import 'package:statemanagement_app/data/models/post_model.dart';
import 'package:statemanagement_app/data/repositories/api/api.dart';

class PostRepository {
  API api = API();

  Future<List<PostModel>> fetchPost() async {
    try {
      Response response = await api.sendRequest.get('/posts');
      List<dynamic> postMap = response.data;
      return postMap.map((map) => PostModel.fromJson(map)).toList();
    } catch (e) {
      throw e;
    }
  }
}
