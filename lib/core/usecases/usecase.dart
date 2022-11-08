import 'package:equatable/equatable.dart';

abstract class UseCase<Results, Params> {
  Future<Results> handle(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object> get props => [];
}
