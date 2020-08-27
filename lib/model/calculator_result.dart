import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class DoseCalculatorResult extends Equatable {
  final UnitWithValue amount;
  final UnitWithValue frequency;

  DoseCalculatorResult({@required this.amount, @required this.frequency});

  void copyWith({UnitWithValue amount, UnitWithValue frequency}) {
    if (!amount.isEmpty) {
      this.amount.value = amount.value;
      this.amount.unit = amount.unit;
    }

    if (!frequency.isEmpty) {
      this.frequency.value = frequency.value;
      this.frequency.unit = frequency.unit;
    }
  }

  bool get isEmpty {
    return amount.isEmpty || frequency.isEmpty ? true : false;
  }

  @override
  // TODO: implement props
  List<Object> get props => [this.amount, this.frequency];
}

class DoseCalculatorData extends Equatable {
  final UnitWithValue dosage;
  final UnitWithValue frequency;
  final UnitWithValue weight;

  DoseCalculatorData({
    this.dosage,
    this.frequency,
    this.weight,
  });

  void copyWith(
      {UnitWithValue dosage, UnitWithValue frequency, UnitWithValue weight}) {
    if (!dosage.isEmpty) {
      this.dosage.value = dosage.value;
      this.dosage.unit = dosage.unit;
    }

    if (!frequency.isEmpty) {
      this.frequency.value = frequency.value;
      this.frequency.unit = frequency.unit;
    }

    if (!weight.isEmpty) {
      this.weight.value = weight.value;
      this.weight.unit = weight.unit;
    }
  }

  bool get isEmpty {
    return dosage.isEmpty || frequency.isEmpty || weight.isEmpty ? true : false;
  }

  @override
  // TODO: implement props
  List<Object> get props => [
        this.dosage,
        this.frequency,
        this.weight,
      ];
}

class UnitWithValue extends Equatable {
  String value = "";
  String unit = "";

  UnitWithValue({
    @required this.value,
    @required this.unit,
  });

//to show the value as double
  double get getValueAsDouble {
    double val = double.parse(this.value);
    //Check if the value is null set it to zero
    if(val == null) val = 0.00;
    return val;
  }

  //Send the Unit Value
  String get getValue{
    //Check if the value is null and return conditional empty string
    if(this.value == null) return "";
    return value;
  }

  //Send the Unit Value
  String get getUnit{
    //Check if the unit is null and return conditional empty string
    if(this.unit == null) return "";
    return unit;
  }

  @override
  // TODO: implement props
  List<Object> get props => [this.value, this.unit];

  void copyWith({value, unit}) {
    if (value != null) {
      this.value = value;
    }

    if (unit != null) {
      this.unit = unit;
    }
  }

  bool get isEmpty {
    return this.unit == null || this.value == null || this.value == "";
  }

  @override
  String toString() {
    this.value == null ? this.value = "" : "";
    this.unit == null ? this.unit = "" : "";
    return "" + this?.value + " " + this?.unit;
  }
}
