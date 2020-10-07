import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vetdiary/widgets/multiple_option_button/cubit/option_cubit.dart';

class MultipleOptionButton extends StatelessWidget {
  const MultipleOptionButton({
    Key key,
    @required this.title,
    @required this.options,
    @required this.onPressed,
  }) : super(key: key);

  //Variables to get data
  final List<String> options;
  final String title;

  //Variable for callback and sending data
  final Function(String) onPressed;

  @override
  Widget build(BuildContext context) {
    //Initialize Cubit
    final OptionCubit _state = OptionCubit();

    return Container(
      padding: EdgeInsets.all(5.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Button for the title
          Container(child: Text(this.title, style: TextStyle(fontSize: 20.0))),
          Spacer(),
          //List of Button to select Data
          BlocBuilder<OptionCubit, OptionState>(
            cubit: _state,
            builder: (context, state) {
              return Wrap(
                  children: this
                      .options
                      .map((e) => Container(
                            // duration: Duration(milliseconds: 1000000),
                            padding: EdgeInsets.only(left: 5.0),
                            child: FlatButton(
                                //Change the color based on selection from cubit
                                color: state.isSelected(e)
                                    ? Theme.of(context).accentColor
                                    : Theme.of(context).buttonColor,
                                onPressed: () {
                                  //Return the value to parent widget
                                  this.onPressed(e);
                                  //change the value in the bloc
                                  _state.changeSelected(e);
                                },
                                child:
                                    Text(e, style: TextStyle(fontSize: 20.0))),
                          ))
                      .toList());
            },
          ),
        ],
      ),
    );
  }
}
