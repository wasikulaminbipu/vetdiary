import 'dart:core';
import 'package:vetdiary/model/calculator_result.dart';

class DosageConverter {
  final DoseCalculatorData data;

  DosageConverter(this.data);

  DoseCalculatorResult  get getDose {
    print(this.data);
    //Create Dose result
    DoseCalculatorResult _result = DoseCalculatorResult(
        amount: UnitWithValue(value: "0", unit: ""),
        frequency: UnitWithValue(value: "0", unit: ""));

    //Check if the data is empty
    if ( this.data != null && !this.data.isEmpty) {
      //implement logic
      _result = DoseCalculatorResult(
          amount: UnitWithValue(value: (this.data.dosage.getValueAsDouble * this.data.weight.getValueAsDouble).toString(), unit: this.data.dosage.unit.toString()),
          frequency: this.data.frequency);
    }

    return _result;
  }
}
