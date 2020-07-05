import 'package:flutter/material.dart';
import 'package:vetdiary/widgets/custom_input_row.dart';

class GestatationCalculator extends StatefulWidget {
  const GestatationCalculator({
    Key key,
  }) : super(key: key);

  @override
  _GestatationCalculatorState createState() => _GestatationCalculatorState();
}

class _GestatationCalculatorState extends State<GestatationCalculator> {
  DateTime inseminationDate;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: ListView(
        children: <Widget>[
          //Calculator Display Board
          Container(
            padding: EdgeInsets.all(10.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey, width: 2.0),
            ),
            //Row of Display Board to show multiple widget in same line
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //Show Date Remaining
                ResultView(
                  result: 123.toString(),
                  unit: "days remaining",
                ),
                //Show Probable Parturition Date
                ResultView(
                  result: this.inseminationDate.day.toString()+"/"+this.inseminationDate.month.toString()+"/"+this.inseminationDate.year.toString(),
                  unit: "Probable Parturation Date",
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
                  this.inseminationDate.day.toString()+"/"+this.inseminationDate.month.toString()+"/"+this.inseminationDate.year.toString(),
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
                    onPressed: () {},
                  ),
                )
              ],
            ),
          ),
          RaisedButton(
            color: Theme.of(context).buttonColor,
            child: Text("Calculate"),
            onPressed: () {
              showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2020),
                      lastDate: DateTime(3000))
                  .then((value) => this.inseminationDate = value);
                  setState((){});
            },
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
