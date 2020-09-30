part of 'visual_options_bloc.dart';

abstract class VisualOptionsState extends Equatable {
  final List<TitleWithIcon> selected;
  const VisualOptionsState({@required this.selected});

  bool isSelected(TitleWithIcon data);
}

class VisualOptionsInitial extends VisualOptionsState {
  VisualOptionsInitial() : super(selected: []);

  @override
  bool isSelected(TitleWithIcon data) {
    return false;
  }

  @override
  List<Object> get props => [this.selected];
}

class VisualOptionsDataUpdated extends VisualOptionsState {
  VisualOptionsDataUpdated({@required List<TitleWithIcon> selected})
      : super(selected: selected);

  @override
  bool isSelected(TitleWithIcon data) {
    return this.selected.contains(data);
  }

  @override
  List<Object> get props => [this.selected];
}
