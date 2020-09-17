import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:vetdiary/model/calculator_result.dart';

part 'gestation_calculator_event.dart';
part 'gestation_calculator_state.dart';

class GestationCalculatorBloc
    extends Bloc<GestationCalculatorEvent, GestationCalculatorState> {
  GestationCalculatorBloc() : super(GestationCalculatorInitial());

  //Variables to store state data and calculated results
  GestationCalculatorData data = GestationCalculatorData(
      gestation: UnitWithValue(value: "", unit: ""),
      insemination: DateTime(2020));
  GestationCalculatorResult result =
      GestationCalculatorResult(duration: Duration(days: 0), parturition: null);

  @override
  Stream<GestationCalculatorState> mapEventToState(
    GestationCalculatorEvent event,
  ) async* {
    // TODO: implement mapEventToState
    if (event is InseminationDateAdded) {
      yield* _mapInseminationEventToState(event);
    } else if (event is GestationPeriodAdded) {
      yield* _mapGestationPeriodEventToState(event);
    }
  }

  Stream<GestationCalculatorState> _mapInseminationEventToState(
      InseminationDateAdded event) async* {
    //Save the data to the variable
    this.data = this.data.copyWith(insemination: event.insemination);
    //check if the data is same else transmit data
    yield GestationCalculatorStateUpdated(result: this.result, data: this.data);
  }

  Stream<GestationCalculatorState> _mapGestationPeriodEventToState(
      GestationPeriodAdded event) async* {
    //Save data to the Variable
    this.data = this.data.copyWith(gestation: event.gestation);
    //Transmit the data
    yield GestationCalculatorStateUpdated(data: this.data, result: this.result);
  }
}
