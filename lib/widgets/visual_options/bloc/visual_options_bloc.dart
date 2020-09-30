import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:vetdiary/model/utility.dart';

part 'visual_options_event.dart';
part 'visual_options_state.dart';

class VisualOptionsBloc extends Bloc<VisualOptionsEvent, VisualOptionsState> {
  List<TitleWithIcon> _selected = [];
  VisualOptionsBloc() : super(VisualOptionsInitial());

  @override
  Stream<VisualOptionsState> mapEventToState(
    VisualOptionsEvent event,
  ) async* {
    if (event is UpdateVisualOption) {
      yield* _mapVisualOptionLoadState(event);
    }
  }

  Stream<VisualOptionsState> _mapVisualOptionLoadState(
      VisualOptionsEvent event) async* {
    //Check if multiselect is true
    //If multiselected then
    if (event.multiSelect) {
      //check if the variable contains the data
      this._selected.contains(event.option)
          ? this._selected.remove(event.option) //If Data is in list remove it
          : this._selected.add(event.option); //If data is not in list add it
    } else {
      //Check if the list contains the option
      this._selected.contains(event.option)
          ? this
              ._selected
              .remove(event.option) // If data is in the list remove it
          : this._selected = [
              event.option
            ]; // If data is not in the list create new array and add data
    }

    print(this._selected);

    yield VisualOptionsDataUpdated(selected: this._selected.toList());
  }
}
