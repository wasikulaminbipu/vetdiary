part of 'option_cubit.dart';

abstract class OptionState extends Equatable {
  final String selected;

  const OptionState({@required this.selected});

  //Return if the data is selected or not
  bool isSelected(String option) {
    
    return (this.selected == null || option == null ) ? false : option.contains(this.selected);
  }

  @override
  List<Object> get props => [this.selected];
}

class OptionInitial extends OptionState {}

class OptionStateChanged extends OptionState {
  OptionStateChanged({@required String selected}): super(selected: selected);

}
