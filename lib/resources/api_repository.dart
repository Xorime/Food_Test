import 'package:food_test/models/categories_model.dart';

import 'api_provider.dart';

class ApiRepository {
  final _provider = ApiProvider();

  Future<CategoriesModel> fetchCategoriesList() {
    return _provider.fetchCategoriesList();
  }
}

class NetworkError extends Error {}
