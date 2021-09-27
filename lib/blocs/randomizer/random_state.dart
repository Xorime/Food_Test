part of 'random_bloc.dart';

abstract class RandomState extends Equatable {
  const RandomState();
}

class RandomInitial extends RandomState {
  const RandomInitial();
  @override
  List<Object> get props => [];
}

class RandomLoading extends RandomState {
  const RandomLoading();
  @override
  List<Object> get props => [];
}

class RandomLoaded extends RandomState {
  final RandomModel randomModel;
  const RandomLoaded(this.randomModel);
  @override
  List<Object> get props => [randomModel];
}

class RandomError extends RandomState {
  final String message;
  const RandomError(this.message);
  @override
  List<Object> get props => [message];
}
