import 'package:dio/dio.dart';
import 'package:food_test/models/random_model.dart';

class ApiProviderRandom {
  final Dio _dio = Dio();
  final String _url = 'https://www.themealdb.com/api/json/v1/1/random.php';

  Future<RandomModel> fetchRandomList() async {
    try {
      Response response = await _dio.get(_url);
      return RandomModel.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return RandomModel.withError("Data not found / Connection issue");
    }
  }
}
