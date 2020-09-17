part of 'gestation_calculator_bloc.dart';

abstract class GestationCalculatorEvent extends Equatable {
  const GestationCalculatorEvent();

  @override
  List<Object> get props => [];
}

class GestationPeriodAdded extends GestationCalculatorEvent{
  final UnitWithValue gestation;

  GestationPeriodAdded({@required  this.gestation});
  
  @override
  List<Object> get props => [this.gestation];

  @override
  bool get stringify => true;

}

class InseminationDateAdded extends GestationCalculatorEvent{
  final DateTime insemination;

  InseminationDateAdded({@required this.insemination});

  @override
  List<Object> get props => [this.insemination];

  @override
  bool get stringify => true;

}

class CalculatePressed extends GestationCalculatorEvent{
  @override
  List<Object> get props => [];

  @override
  bool get stringify => true;

}
