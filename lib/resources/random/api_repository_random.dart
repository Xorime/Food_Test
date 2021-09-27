import 'package:food_test/models/random_model.dart';

import 'api_provider_random.dart';

class ApiRepositoryRandom {
  final _provider = ApiProviderRandom();

  Future<RandomModel> fetchRandomList() {
    return _provider.fetchRandomList();
  }
}

class NetworkError extends Error {}
