import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:food_test/models/categories_model.dart';
import 'package:food_test/resources/api_repository.dart';

part 'categories_event.dart';
part 'categories_state.dart';

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  final ApiRepository _apiRepository = ApiRepository();

  CategoriesBloc(CategoriesState initialState) : super(initialState);

  @override
  CategoriesState get initialState => CategoriesInitial();

  @override
  Stream<CategoriesState> mapEventToState(
    CategoriesEvent event,
  ) async* {
    if (event is GetCategoriesList) {
      try {
        yield CategoriesLoading();
        final mList = await _apiRepository.fetchCategoriesList();
        yield CategoriesLoaded(mList);
        if (mList.error != null) {
          yield CategoriesError(mList.error);
        }
      } on NetworkError {
        yield CategoriesError("Failed to fetch data. is your device online?");
      }
    }
  }
}
