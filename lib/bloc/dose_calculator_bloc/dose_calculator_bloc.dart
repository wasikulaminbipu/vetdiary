import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:vetdiary/library/converter/converter.dart';
import 'package:vetdiary/model/calculator_result.dart';

part 'dose_calculator_event.dart';
part 'dose_calculator_state.dart';

class DoseCalculatorBloc
    extends Bloc<DoseCalculatorEvent, DoseCalculatorState> {

      //Constructor for the bloc
  DoseCalculatorBloc(DoseCalculatorState initialState) : super(initialState);

  @override
  Stream<DoseCalculatorState> mapEventToState(
    DoseCalculatorEvent event,
  ) async* {
    // TODO: implement mapEventToState
    if (event is DoseCalculatorDataAdded) {
      yield* _mapDoseCalculatorLoadState(event);
    }
  }

  @override
  // TODO: implement initialState
  DoseCalculatorState get initialState => DoseCalculatorStateLoaded(
          result: DoseCalculatorResult(
        amount: UnitWithValue(value: "0", unit: ""),
        frequency: UnitWithValue(value: "0", unit: ""),
      ));

  //===========Dose Calculator Area=======================
  Stream<DoseCalculatorState> _mapDoseCalculatorLoadState(
      DoseCalculatorDataAdded event) async* {
    yield DoseCalculatorStateLoaded(
        result: DosageConverter(event.data).getDose);
  }
}
