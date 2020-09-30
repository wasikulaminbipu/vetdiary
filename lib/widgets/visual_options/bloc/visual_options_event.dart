part of 'visual_options_bloc.dart';

abstract class VisualOptionsEvent extends Equatable {
  final TitleWithIcon option;
  final bool multiSelect;
  const VisualOptionsEvent({@required this.option, this.multiSelect = false});

  @override
  List<Object> get props => [this.option, this.multiSelect];
}

class UpdateVisualOption extends VisualOptionsEvent {
  final TitleWithIcon option;
  final bool multiSelect;
  UpdateVisualOption({@required this.option, this.multiSelect = false})
      : super(option: option, multiSelect: multiSelect);
}
