import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vetdiary/bloc/calculator_bloc/calculator_bloc.dart';
import 'package:vetdiary/bloc/dose_calculator_bloc/dose_calculator_bloc.dart';
import 'package:vetdiary/widgets/custom_input_row.dart';
import 'package:vetdiary/widgets/result_view.dart';



class DosageCalculator extends StatelessWidget {
  const DosageCalculator({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DoseCalculatorBloc, DoseCalculatorState>(
      builder: (context, state) {
        final result = (state as DoseCalculatorStateLoaded).result;

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
                      result: result.amount.value.toString(),
                      unit: result.amount.unit.toString(),
                    ),
                    Text(
                      "X",
                      style:
                          Theme.of(context).primaryTextTheme.headline4,
                    ),
                    ResultView(
                      result: result.frequency.value.toString(),
                      unit: result.frequency.unit.toString(),
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
                onPressed: () {

                  BlocProvider.of<DoseCalculatorBloc>(context).add(DoseCalculatorDataAdded());
                },
              )
            ],
          ),
        );
      }
    );
  }
}