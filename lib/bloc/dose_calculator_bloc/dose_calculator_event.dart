part of 'dose_calculator_bloc.dart';

@immutable
abstract class DoseCalculatorEvent {}


//------------------Dose Calculator Events-----------------
class DoseCalculatorDataAdded extends DoseCalculatorEvent{
  final DoseCalculatorData data;

  DoseCalculatorDataAdded({this.data});

  @override
  // TODO: implement props
  List<Object> get props => [];

}