import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'calculator_event.dart';
part 'calculator_state.dart';

class CalculatorBloc extends Bloc<CalculatorEvent, CalculatorState> {
  
  CalculatorBloc(CalculatorState initialState) : super(initialState);


  @override
  Stream<CalculatorState> mapEventToState(
    CalculatorEvent event,
  ) async* {
    // TODO: implement mapEventToState
    if (event is AgeCalculatorDataAdded) {
      yield* _mapAgeCalculatorLoadedState(event);
    }
  }

  Stream<CalculatorState> _mapAgeCalculatorLoadedState(
      AgeCalculatorDataAdded event) async* {
    Duration result = Duration(days: 0);

    if (event.fromDate != null && event.toDate != null) {
      result = event.toDate.difference(event.fromDate);
    }

    yield AgeCalculatorStateLoaded(result);
  }

  
}
