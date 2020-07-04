import 'package:flutter/material.dart';
import 'package:vetdiary/widgets/custom_input_row.dart';



class FluidRateCalculator extends StatelessWidget {
  const FluidRateCalculator({
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
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              alignment: WrapAlignment.center,
              children: <Widget>[
                Container(alignment: Alignment.topRight, child: Icon(Icons.toll)),
                ResultView(
                  result: 123.2.toString(),
                  unit: "drops/min",
                ),
              ],
            ),
          ),
          CustomInputRow(
            // lookup: () {},
            title: "Fluid Rate: ",
            options: ["mg/kg/day"],
            onChanged: (value) {},
          ),
          CustomInputRow(
            title: "Dehydration: ",
            options: ["%"],
            onChanged: (value) {},
          ),
          CustomInputRow(
            title: "Time: ",
            options: ["minutes"],
            onChanged: (value) {},
          ),
          CustomInputRow(
            title: "Patient's Weight: ",
            options: ["kg","pound"],
            onChanged: (value) {},
          ),
          CustomInputRow(
            title: "Drops: ",
            options: ["drops/ml"],
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
