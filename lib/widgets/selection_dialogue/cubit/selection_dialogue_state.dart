part of 'selection_dialogue_cubit.dart';

abstract class SelectionDialogueState extends Equatable {
  final List<String> selected;
  final List<String> options;

  const SelectionDialogueState(this.selected, this.options);

  @override
  List<Object> get props => [this.selected, this.options];

  //Function to check if the option is selected
  bool isSelected(String option) {
    //Check the validity of the option
    if (option != null && option.length > 0 && this.selected.length > 0)
      return this.selected.contains(option);

    //If the option is not valid or other issue directly return false
    return false;
  }
}

class SelectionDialogueInitial extends SelectionDialogueState {
  SelectionDialogueInitial(List<String> selected, List<String> options)
      : super(selected, options);
}

class SelectionDialogueStateChanged extends SelectionDialogueState {
  SelectionDialogueStateChanged(List<String> selected, List<String> options)
      : super(selected, options);
}
