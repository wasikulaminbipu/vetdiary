import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'selection_dialogue_state.dart';

class SelectionDialogueCubit extends Cubit<SelectionDialogueState> {
  final List<String> options;

  List<String> _selected = [];
  List<String> _viewOptions = [];
  SelectionDialogueCubit(this.options)
      : super(SelectionDialogueInitial([], options)) {
    this._viewOptions = options;
  }

  void selectOption(String option) {
    //check the validity of the option
    if (option != null && option.length > 0) {
      //toogle selection of the option
      if (this._selected.contains(option)) {
        //When the option is already selected
        this._selected.remove(option);
      } else {
        //When option is not selected
        this._selected.add(option);
      }
      //Emit the data to the state
      emit(SelectionDialogueStateChanged(
          this._selected.toList(), this._viewOptions.toList()));
    }
  }

  //to select all the item in one click
  void selectAll() {
    if (this._selected.length != this.options.length)
      this._selected = this.options;
    else
      this._selected = [];

    emit(SelectionDialogueStateChanged(
        this._selected.toList(), this._viewOptions.toList()));
  }

  //this creates function to search from the list
  void searchOption(String search) {
    //Check if the search string is valid
    if (search != null && search.length >= 0) {
      //emit the data to the state
      this._viewOptions = this
          .options
          .where((element) => element
              .trim()
              .toLowerCase()
              .contains(search.trim().toLowerCase()))
          .toList();
      emit(SelectionDialogueStateChanged(
          this._selected.toList(), this._viewOptions.toList()));
    }
  }
}
