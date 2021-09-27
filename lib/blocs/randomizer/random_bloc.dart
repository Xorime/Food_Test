import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:food_test/models/random_model.dart';
import 'package:food_test/resources/random/api_repository_random.dart';

part 'random_event.dart';
part 'random_state.dart';

class RandomBloc extends Bloc<RandomEvent, RandomState> {
  final ApiRepositoryRandom _apiRepository = ApiRepositoryRandom();

  RandomBloc(RandomState initialState) : super(initialState);

  @override
  RandomState get initialState => RandomInitial();

  @override
  Stream<RandomState> mapEventToState(
    RandomEvent event,
  ) async* {
    if (event is GetRandomList) {
      try {
        yield RandomLoading();
        final mList = await _apiRepository.fetchRandomList();
        yield RandomLoaded(mList);
        if (mList.error != null) {
          yield RandomError(mList.error);
        }
      } on NetworkError {
        yield RandomError("Failed to fetch data. is your device online?");
      }
    }
  }
}
