import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'custom_add_option_state.dart';

class CustomAddOptionCubit extends Cubit<CustomAddOptionState> {
  CustomAddOptionCubit() : super(CustomAddOptionInitial());

  List<String> options = [];

  void addOption(String option) {
    //Check the validity of the option
    if (option != null && option.isNotEmpty && !this.options.contains(option)) {
      this.options.add(option);
    }
  }

  void removeOption(String option) {
    //Check the validity of the option
    if (option != null && option.isNotEmpty && this.options.contains(option)) {
      this.options.remove(option);
      emit(UpdateAddOption(options: this.options));
    }
  }
}
