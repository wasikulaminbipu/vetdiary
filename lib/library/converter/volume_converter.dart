import 'dart:core';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:vetdiary/model/utility.dart';

class VolumeConverter {
  //define all the standard Weight Formats and set value to step to KG by multiplication
  final List<VariableWithValue> _standardWeightFormats = [
    VariableWithValue(variable: "usLiquidGallon", value: 3.78541),
    VariableWithValue(variable: "usLiquidQuart", value: 0.946353),
    VariableWithValue(variable: "usLiquidPint", value: 0.473176),
    VariableWithValue(variable: "usLegalCup", value: 0.24),
    VariableWithValue(variable: "usFluidOunces", value: 0.0295735),
    VariableWithValue(variable: "usTablespoon", value: 0.0147868),
    VariableWithValue(variable: "usTeaspoon", value: 0.00492892),
    VariableWithValue(variable: "milliliters", value: pow(10, -3)),
    VariableWithValue(variable: "litres", value: 1),
    VariableWithValue(variable: "imperialGallons", value: 4.54609),
    VariableWithValue(variable: "imperialQuart", value: 1.13652),
    VariableWithValue(variable: "imperialPint", value: 0.568261),
    VariableWithValue(variable: "imperialCup", value: 0.284131),
    VariableWithValue(variable: "imperialFluidOunces", value: 0.0284131),
    VariableWithValue(variable: "imperialTablespoon", value: 0.0177582),
    VariableWithValue(variable: "imperialTeaspoon", value: 0.00591939),
    VariableWithValue(variable: "cubicMetres", value: pow(10,3)),
    VariableWithValue(variable: "cubicFoot", value: 28.3168),
    VariableWithValue(variable: "cubicInch", value: 0.0163871),
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


