part of 'categories_bloc.dart';

abstract class CategoriesEvent extends Equatable {
  const CategoriesEvent();
}

class GetCategoriesList extends CategoriesEvent {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
