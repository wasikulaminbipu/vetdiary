import 'dart:core';
import 'dart:math';
import 'package:flutter/material.dart';

class WeightConverter {
  //define all the standard Weight Formats and set value to step to KG by multiplication
  final List<VariableWithValue> _standardWeightFormats = [
    VariableWithValue(variable: "mcg", value: pow(10, -9)),
    VariableWithValue(variable: "mg", value: pow(10, -6)),
    VariableWithValue(variable: "g", value: pow(10, -3)),
    VariableWithValue(variable: "kg", value: 1),
    VariableWithValue(variable: "tonnes", value: pow(10, 3)),
    VariableWithValue(variable: "impTon", value: 1016.05),
    VariableWithValue(variable: "usTon", value: 907.185),
    VariableWithValue(variable: "stone", value: 6.35029),
    VariableWithValue(variable: "lb", value: 0.453592),
    VariableWithValue(variable: "oz", value: 0.0283495),
  ];

  double _valueInKG = 0;

  //get the unit and convert to KG
  void from({@required String unit, @required double value}) {
    //Search all the unit in the standardWeightFormat Variable
    this._standardWeightFormats.forEach((VariableWithValue element) {
      //Check if the variable matches

      if (unit.contains(element.variable)) {
        //when unit matches then convert the value to KG
        this._valueInKG = value * element.value;
      }
    });
  }

  double to({@required String unit}) {
    double _value = 0;

    //Check if the valueInKG has been set and then prepare return value
    if (this._valueInKG == 0 || this._valueInKG == null)
      //Prepare return value
      this._standardWeightFormats.forEach((VariableWithValue element) {
        //Check if the Unit matches
        if (unit.contains(element.variable)) {
          //when unit matches then convert the value to desired Unit
          _value = this._valueInKG / element.value;
        }
      });

    //return the value in desired unit or return 0
    return _value;
  }
}

class VariableWithValue {
  final String variable;
  final double value;

  VariableWithValue({@required this.variable, @required this.value});
}
