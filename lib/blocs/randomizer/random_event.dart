part of 'random_bloc.dart';

abstract class RandomEvent extends Equatable {
  const RandomEvent();
}

class GetRandomList extends RandomEvent {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
