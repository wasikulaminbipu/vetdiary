part of 'custom_add_option_cubit.dart';

abstract class CustomAddOptionState extends Equatable {
  final List<String> options;

  const CustomAddOptionState({@required this.options});

  @override
  List<Object> get props => [];
}

class CustomAddOptionInitial extends CustomAddOptionState {
  CustomAddOptionInitial() : super(options: []);
}

class UpdateAddOption extends CustomAddOptionState {
  UpdateAddOption({@required List<String> options}) : super(options: options);
}
