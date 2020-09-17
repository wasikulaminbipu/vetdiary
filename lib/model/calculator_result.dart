import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class DoseCalculatorResult extends Equatable {
  final UnitWithValue amount;
  final UnitWithValue frequency;

  DoseCalculatorResult({@required this.amount, @required this.frequency});

  DoseCalculatorResult copyWith(
      {UnitWithValue amount, UnitWithValue frequency}) {
    return DoseCalculatorResult(
        amount: amount ?? this.amount, frequency: frequency ?? this.frequency);
  }

  bool get isEmpty {
    return amount.isEmpty || frequency.isEmpty ? true : false;
  }

  @override
  List<Object> get props => [this.amount, this.frequency];

  @override
  bool get stringify => true;
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

  DoseCalculatorData copyWith(
      {UnitWithValue dosage, UnitWithValue frequency, UnitWithValue weight}) {
    return DoseCalculatorData(
        dosage: dosage ?? this.dosage,
        frequency: frequency ?? this.frequency,
        weight: weight ?? this.weight);
  }

  bool get isEmpty {
    return dosage.isEmpty || frequency.isEmpty || weight.isEmpty ? true : false;
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [
        this.dosage,
        this.frequency,
        this.weight,
      ];
}

class UnitWithValue extends Equatable {
  final String value;
  final String unit;

  UnitWithValue({
    @required this.value,
    @required this.unit,
  });

  UnitWithValue.initialize({this.value = "", this.unit = ""});

//to show the value as double
  double get getValueAsDouble {
    double val = double.parse(this.value);
    //Check if the value is null set it to zero
    if (val == null) val = 0.00;
    return val;
  }

  //Send the Unit Value
  String get getValue {
    //Check if the value is null and return conditional empty string
    if (this.value == null) return "";
    return value;
  }

  //Send the Unit Value
  String get getUnit {
    //Check if the unit is null and return conditional empty string
    if (this.unit == null) return "";
    return unit;
  }

  //Get new class with common value
  UnitWithValue copyWith({String value, String unit}) {
    return UnitWithValue(value: value ?? this.value, unit: unit ?? this.unit);
  }

  bool get isEmpty {
    return this.unit == null || this.value == null || this.value == "";
  }

  @override
  List<Object> get props => [this.value, this.unit];

  @override
  bool get stringify => true;
}

class GestationCalculatorResult extends Equatable {
  final Duration duration;
  final DateTime parturition;

  GestationCalculatorResult(
      {@required this.duration, @required this.parturition});

  //To Crate new class with common value
  GestationCalculatorResult copyWith(
      {Duration duration, DateTime parturition}) {
    return GestationCalculatorResult(
        duration: duration ?? this.duration,
        parturition: parturition ?? this.parturition);
  }

  @override
  List<Object> get props => [this.duration, this.parturition];

  @override
  bool get stringify => true;
}

class GestationCalculatorData extends Equatable {
  final UnitWithValue gestation;
  final DateTime insemination;

  GestationCalculatorData(
      {@required this.gestation, @required this.insemination});

  //Get a new Class with common data
  GestationCalculatorData copyWith(
      {UnitWithValue gestation, DateTime insemination}) {
    return GestationCalculatorData(
        gestation: gestation ?? this.gestation,
        insemination: insemination ?? this.insemination);
  }

  @override
  List<Object> get props => [this.gestation, this.insemination];

  @override
  bool get stringify => true;
}
