import 'package:flutter/material.dart';

class CustomDateField extends StatefulWidget {
  const CustomDateField({
    Key key,
    // @required this.context,
    @required this.title,
    @required this.onClick,
  }) : super(key: key);

  // final BuildContext context;
  final String title;
  final Function onClick;

  @override
  _CustomDateFieldState createState() => _CustomDateFieldState();
}

class _CustomDateFieldState extends State<CustomDateField> {
  DateTime date;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            widget.title,
            style: Theme.of(context).primaryTextTheme.headline4,
          ),
          Text(
            this.date == null
                ? ""
                : this.date.day.toString() +
                    "/" +
                    this.date.month.toString() +
                    "/" +
                    this.date.year.toString(),
            style: Theme.of(context).primaryTextTheme.headline4,
          ),
          SizedBox(
            width: 5.0,
          ),
          Container(
            height: 50.0,
            child: RaisedButton(
              elevation: 5.0,
              color: Theme.of(context).buttonColor,
              child: Icon(Icons.import_export),
              onPressed: () {
                showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2100))
                    .then((value) {
                  this.date = value;
                  setState(() {});
                  this.widget.onClick(this.date);
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
