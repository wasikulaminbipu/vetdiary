part of 'calculator_bloc.dart';

@immutable
abstract class CalculatorEvent extends Equatable{}

class AgeCalculatorDataAdded extends CalculatorEvent{
  final DateTime fromDate;
  final DateTime toDate;

  AgeCalculatorDataAdded(this.fromDate, this.toDate);

  @override
  // TODO: implement props
  List<Object> get props => [this.fromDate, this.toDate];
}

