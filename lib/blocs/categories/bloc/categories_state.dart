part of 'categories_bloc.dart';

abstract class CategoriesState extends Equatable {
  const CategoriesState();
}

class CategoriesInitial extends CategoriesState {
  const CategoriesInitial();
  @override
  List<Object> get props => [];
}

class CategoriesLoading extends CategoriesState {
  const CategoriesLoading();
  @override
  List<Object> get props => [];
}

class CategoriesLoaded extends CategoriesState {
  final CategoriesModel categoriesModel;
  const CategoriesLoaded(this.categoriesModel);
  @override
  List<Object> get props => [categoriesModel];
}

class CategoriesError extends CategoriesState {
  final String message;
  const CategoriesError(this.message);
  @override
  List<Object> get props => [message];
}
