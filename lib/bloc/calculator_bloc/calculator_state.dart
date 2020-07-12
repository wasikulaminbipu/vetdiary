part of 'calculator_bloc.dart';

@immutable
abstract class CalculatorState extends Equatable {}

abstract class AgeCalculatorResultState extends CalculatorState {
  final Duration result = Duration(days: 0);
}

class AgeCalculatorInitial extends AgeCalculatorResultState {
  final Duration result;

  AgeCalculatorInitial(this.result);

  @override
  String toString() {
    return "Calculator State Initialized! $result";
  }

  @override
  // TODO: implement props
  List<Object> get props => [result];
}

class AgeCalculatorStateLoaded extends AgeCalculatorResultState {
  final Duration result;

  AgeCalculatorStateLoaded(this.result);

  @override
  String toString() {
    return "Result Published Successfully! $result";
  }

  @override
  // TODO: implement props
  List<Object> get props => [result];
}

class AgeCalaculatorStateFailed extends AgeCalculatorResultState {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

