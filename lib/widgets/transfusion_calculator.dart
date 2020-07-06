import 'package:flutter/material.dart';
import 'package:vetdiary/widgets/custom_input_row.dart';

class TransfusionCalculator extends StatefulWidget {
  const TransfusionCalculator({
    Key key,
  }) : super(key: key);

  @override
  _TransfusionCalculatorState createState() => _TransfusionCalculatorState();
}

class _TransfusionCalculatorState extends State<TransfusionCalculator> {
  bool rbcPacked = true;

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
                  result: 500.toString(),
                  unit: "mL Volume",
                ),
                ResultView(
                  result: 25.toString(),
                  unit: "ml/hr",
                ),
              ],
            ),
          ),
          // Get if RBC is Packed
          SizedBox(
            height: 10.0,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Packed RBC",
                  style: Theme.of(context).primaryTextTheme.headline4,
                ),
                Switch(
                    value: rbcPacked,
                    onChanged: (value) {
                      this.rbcPacked = value;
                      setState(() {});
                    }),
              ],
            ),
          ),
          //Get Weight of the animal
          CustomInputRow(
            title: "Weight: ",
            options: ["kg", "pound"],
            onChanged: (value) {},
          ),
          //Get Current PCV
          CustomInputRow(
            title: "Current PCV: ",
            options: ["%"],
            onChanged: (value) {},
          ),
          //Get Desired PCV
          CustomInputRow(
            title: "Desired PCV: ",
            options: ["%"],
            onChanged: (value) {},
          ),
          //Show Calculate Button
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
