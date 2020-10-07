import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'option_state.dart';

class OptionCubit extends Cubit<OptionState> {
  OptionCubit() : super(OptionInitial());

  //Variables to keep state
  String _selected;

  void changeSelected(String selected) {
    this._selected = selected;
    emit(OptionStateChanged(selected: this._selected));
  }
}
