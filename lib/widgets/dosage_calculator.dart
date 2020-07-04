import 'package:flutter/material.dart';
import 'package:vetdiary/widgets/custom_input_row.dart';



class DosageCalculator extends StatelessWidget {
  const DosageCalculator({
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
                  style:
                      Theme.of(context).primaryTextTheme.headline4,
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
            title: "Dosage: ",
            options: ["mg/L", "DDD"],
            onChanged: (value) {},
          ),
          CustomInputRow(
            title: "Frequency: ",
            options: ["times/day"],
            onChanged: (value) {},
          ),
          CustomInputRow(
            lookup: () {},
            title: "Patient's Weight: ",
            options: ["mg/L", "DDD"],
            onChanged: (value) {},
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
