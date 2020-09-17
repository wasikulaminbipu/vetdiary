part of 'gestation_calculator_bloc.dart';

abstract class GestationCalculatorState extends Equatable {
  //Declear the required data
  final GestationCalculatorResult result;
  final GestationCalculatorData data;

  const GestationCalculatorState({this.result, this.data});

  @override
  List<Object> get props => [];
}

class GestationCalculatorInitial extends GestationCalculatorState {
  final GestationCalculatorResult result =
      GestationCalculatorResult(duration: Duration(days: 0), parturition: null);
  final GestationCalculatorData data = GestationCalculatorData(
      gestation: UnitWithValue(value: null, unit: null), insemination: null);

  @override
  List<Object> get props => [this.result, this.data];

  @override
  bool get stringify => true;
}

class GestationCalculatorStateUpdated extends GestationCalculatorState {
  final GestationCalculatorResult result;
  final GestationCalculatorData data;

  GestationCalculatorStateUpdated({@required this.result, @required this.data});

  @override
  List<Object> get props => [this.result, this.data];

  @override
  // TODO: implement stringify
  bool get stringify => true;
}

// class GestationPeriodUpdated extends GestationCalculatorState {
//   final UnitWithValue gestation;

//   GestationPeriodUpdated({@required this.gestation});

//   @override
//   List<Object> get props => [this.gestation];

//   @override
//   bool get stringify => true;
// }

// class InseminationDateUpdated extends GestationCalculatorState {
//   final DateTime insemination;

//   InseminationDateUpdated({@required this.insemination});

//   @override
//   List<Object> get props => [this.insemination];

//   @override
//   bool get stringify => true;
// }
