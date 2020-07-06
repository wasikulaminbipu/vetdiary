import 'package:flutter/material.dart';


class ResultView extends StatelessWidget {
  final String result;
  final String unit;

  const ResultView({
    Key key,
    @required this.result,
    @required this.unit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            this.result,
            style: Theme.of(context)
                .primaryTextTheme
                .headline6
                .copyWith(fontSize: 50.0),
          ),
          Text(
            this.unit,
            style: Theme.of(context).primaryTextTheme.headline4,
          ),
        ],
      ),
    );
  }
}