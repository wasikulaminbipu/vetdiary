import 'package:flutter/foundation.dart';

class SelectionDialogueModel extends ChangeNotifier {
  final List<String> fixedOptions;
  final bool multiSelect;

  List<String> _selected = [];
  List<String> _viewOptions = [];

  SelectionDialogueModel(this.fixedOptions,
      {List<String> selected = const [], this.multiSelect = false}) {
    this._selected = selected.toList();
    this._viewOptions = this.fixedOptions.toList();
  }

  List<String> get selected => this._selected;
  List<String> get options => this._viewOptions;

  void selectOption(String option) {
    //check the validity of the option
    if (option != null && option.length > 0) {
      //toogle selection of the option
      if (this._selected.contains(option)) {
        //When the option is already selected
        this._selected.remove(option);
      } else {
        //When option is not selected already
        //----------------------------------
        //if multiselect is false only selected will be option else add option
        if (!this.multiSelect)
          this._selected = [option];
        else
          this._selected.add(option);
      }
      //Emit the data to the state
      notifyListeners();
    }
  }

  //to select all the item in one click
  void selectAll() {
    //Check if all the options are selected already
    if (this._selected.length != this.fixedOptions.length)
      //Select all the options
      this._selected = this.fixedOptions;
    else
      //remove all the options
      this._selected = [];

    notifyListeners();
  }

  //this creates function to search from the list
  void searchOption(String search) {
    //Check if the search string is valid
    if (search != null && search.length >= 0) {
      //emit the data to the state
      this._viewOptions = this
          .fixedOptions
          .where((element) => element
              .trim()
              .toLowerCase()
              .contains(search.trim().toLowerCase()))
          .toList();
      notifyListeners();
    }
  }

  //Function to check if the option is selected
  bool isSelected(String option) {
    return option != null &&
        option.isNotEmpty &&
        this._selected.contains(option.trim());
  }
}
