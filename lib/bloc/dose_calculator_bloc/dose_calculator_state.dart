part of 'dose_calculator_bloc.dart';

@immutable
abstract class DoseCalculatorState {}

// class DoseCalculatorInitial extends DoseCalculatorState {}


//-----------------Dose Calculator State---------------------
class DoseCalculatorStateLoaded extends DoseCalculatorState {
  final DoseCalculatorResult result;

  DoseCalculatorStateLoaded({@required this.result});

  @override
  // TODO: implement props
  List<Object> get props => [this.result];

  @override
  String toString() {
    return "Dose Calculator Result Published!, $result";
  }
}

class DoseCalculatorStateFailed extends DoseCalculatorState{
  @override
  // TODO: implement props
  List<Object> get props => [];
}
