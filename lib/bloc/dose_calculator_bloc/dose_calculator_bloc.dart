import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:vetdiary/model/calculator_result.dart';

part 'dose_calculator_event.dart';
part 'dose_calculator_state.dart';

class DoseCalculatorBloc
    extends Bloc<DoseCalculatorEvent, DoseCalculatorState> {
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
        amount: UnitWithValue(value: 0, unit: ""),
        frequency: UnitWithValue(value: 0, unit: ""),
      ));

  //===========Dose Calculator Area=======================
  Stream<DoseCalculatorState> _mapDoseCalculatorLoadState(
      DoseCalculatorDataAdded event) async* {
    yield DoseCalculatorStateLoaded(
        result: DoseCalculatorResult(
      amount: UnitWithValue(value: 20, unit: ""),
      frequency: UnitWithValue(value: 20, unit: ""),
    ));
  }
}
