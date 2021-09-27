import 'package:food_test/models/categories_model.dart';

import 'api_provider_category.dart';

class ApiRepositoryCategory {
  final _provider = ApiProviderCategory();

  Future<CategoriesModel> fetchCategoriesList() {
    return _provider.fetchCategoriesList();
  }
}

class NetworkError extends Error {}
