import 'package:flutter/material.dart';
import 'package:vetdiary/widgets/custom_input_row.dart';

class GestatationCalculator extends StatelessWidget {
  const GestatationCalculator({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: ListView(
        children: <Widget>[
          //Calculator Display
          Container(
            padding: EdgeInsets.all(10.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey, width: 2.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ResultView(
                  result: 123.2.toString(),
                  unit: "mg/L",
                ),
                Text(
                  "X",
                  style: Theme.of(context).primaryTextTheme.headline4,
                ),
                ResultView(
                  result: 2.toString(),
                  unit: "Times",
                ),
                ResultView(
                  result: "Daily",
                  unit: "",
                ),
              ],
            ),
          ),
          CustomInputRow(
            lookup: () {},
            title: "Gestation Period: ",
            options: ["days", "year"],
            onChanged: (value) {},
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Insemination Date: ",
                  style: Theme.of(context).primaryTextTheme.headline4,
                ),
                Text(
                  "12/12/2020",
                  style: Theme.of(context).primaryTextTheme.headline4,
                ),
                SizedBox(width: 5.0,),
                Container(
                  height: 50.0,
                  child: RaisedButton(
                    elevation: 5.0,
                    color: Theme.of(context).buttonColor,
                    child: Icon(Icons.import_export),
                    onPressed: () {},
                  ),
                )
              ],
            ),
          ),
          RaisedButton(
            color: Theme.of(context).buttonColor,
            child: Text("Calculate"),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}

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
