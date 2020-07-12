import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vetdiary/bloc/calculator_bloc/calculator_bloc.dart';
import 'package:vetdiary/widgets/custom_datetime.dart';
import 'package:vetdiary/widgets/custom_input_row.dart';
import 'package:vetdiary/widgets/result_view.dart';

class AgeCalculator extends StatefulWidget {
  const AgeCalculator({
    Key key,
  }) : super(key: key);

  @override
  _GestatationCalculatorState createState() => _GestatationCalculatorState();
}

class _GestatationCalculatorState extends State<AgeCalculator> {
  DateTime fromDate;
  DateTime toDate;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalculatorBloc, CalculatorState>(
        builder: (context, state) {
      final Duration result = (state as AgeCalculatorResultState).result;

      return Builder(builder: (context) {
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
                      result: result.inDays.toString(),
                      unit: "days",
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              CustomDateField(
                title: "From Date: ",
                onClick: (DateTime date) {
                  setState(() {
                    this.fromDate = date;
                  });
                },
              ),
              SizedBox(
                height: 10.0,
              ),

              CustomDateField(
                title: "To Date: ",
                onClick: (DateTime date) {
                  setState(() {
                    this.toDate = date;
                  });
                },
              ),

              RaisedButton(
                color: Theme.of(context).buttonColor,
                child: Text("Calculate"),
                onPressed: this.fromDate != null && this.toDate != null
                    ? () {
                        BlocProvider.of<CalculatorBloc>(context)
                            .add(AgeCalculatorDataAdded(fromDate, toDate));
                      }
                    : null,
              )
            ],
          ),
        );
      });
    });
  }
}
