import 'package:dio/dio.dart';
import 'package:food_test/models/categories_model.dart';

class ApiProviderCategory {
  final Dio _dio = Dio();
  final String _url = 'https://www.themealdb.com/api/json/v1/1/categories.php';

  Future<CategoriesModel> fetchCategoriesList() async {
    try {
      Response response = await _dio.get(_url);
      return CategoriesModel.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return CategoriesModel.withError("Data not found / Connection issue");
    }
  }
}
