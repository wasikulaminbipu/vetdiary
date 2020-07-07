import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'calculator_event.dart';
part 'calculator_state.dart';

class CalculatorBloc extends Bloc<CalculatorEvent, CalculatorState> {
  CalculatorBloc();

  @override
  Stream<CalculatorState> mapEventToState(
    CalculatorEvent event,
  ) async* {
    // TODO: implement mapEventToState
    if(event is AgeCalculatorDataAdded){
      yield* _mapAgeCalculatorLoadedState(event); 
    }
  }

  @override
  // TODO: implement initialState
  CalculatorState get initialState => AgeCalculatorInitial(Duration(days: 0));

  Stream<CalculatorState> _mapAgeCalculatorLoadedState(AgeCalculatorDataAdded event) async*{
    Duration result = event.toDate.difference(event.fromDate);

    yield AgeCalculatorStateLoaded(result);
  }
}
