import 'package:flutter/material.dart';

class MultipleOptionButton extends StatelessWidget {
  const MultipleOptionButton({
    Key key,
    @required this.title,
    @required this.options,
    @required this.selected,
    @required this.onPressed,
  }) : super(key: key);

  //Variables to get data
  final List<String> options;
  final List<String> selected;
  final String title;

  //Variable for callback and sending data
  final Function(String) onPressed;

  @override
  Widget build(BuildContext context) {

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
          Wrap(
                  children: this
                      .options
                      .map((e) => Container(
                            // duration: Duration(milliseconds: 1000000),
                            padding: EdgeInsets.only(left: 5.0),
                            child: FlatButton(
                                //Change the color based on selection from cubit
                                color: this.selected.contains(e)
                                    ? Theme.of(context).accentColor
                                    : Theme.of(context).buttonColor,
                                onPressed: () {
                                  //Return the value to parent widget
                                  this.onPressed(e);
                                },
                                child:
                                    Text(e, style: TextStyle(fontSize: 20.0))),
                          ))
                      .toList()),
        ],
      ),
    );
  }
}
