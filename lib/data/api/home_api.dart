import 'package:jokeapi_flutter/core/network/constant/dio_client.dart';
import 'package:jokeapi_flutter/core/network/constant/endpoints.dart';

class HomeApi {
  final DioClient _dioClient;

  HomeApi(this._dioClient);

  Future<Map<String, dynamic>> fetchJokesApiRequest() async {
    try {
      final res = await _dioClient.get(Endpoints.baseUrl);
      return res.data;
    } catch (e) {
      rethrow;
    }
  }
}
