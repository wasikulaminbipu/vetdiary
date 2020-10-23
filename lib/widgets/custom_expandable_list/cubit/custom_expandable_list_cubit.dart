import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'custom_expandable_list_state.dart';

class CustomExpandableListCubit extends Cubit<CustomExpandableListState> {
  int expandedIndex;

  CustomExpandableListCubit() : super(CustomExpandableListInitial());

  //Function for swaping the expanded widget
  void swapExpandedIndexTo(int index) {
    //If the index is already expanded then unexpand it
    if (expandedIndex == index)
      this.expandedIndex = null;
    //Else change the data
    else
      this.expandedIndex = index;
    //emit the data via state
    emit(CustomExpandableListUpdated(expandedIndex: this.expandedIndex));
  }
}
