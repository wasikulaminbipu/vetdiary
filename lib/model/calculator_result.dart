import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class DoseCalculatorResult extends Equatable{
  final UnitWithValue amount;
  final UnitWithValue frequency;

  DoseCalculatorResult({@required this.amount, @required this.frequency});

  void copyWith({UnitWithValue amount, UnitWithValue frequency}){
    if(!amount.isEmpty){
      this.amount.value = amount.value;
      this.amount.unit = amount.unit;
    }

    if(!frequency.isEmpty){
      this.frequency.value = frequency.value;
      this.frequency.unit = frequency.unit;
    }
  }

  bool get isEmpty{
    return amount.isEmpty || frequency.isEmpty ? true : false;
  }

  @override
  // TODO: implement props
  List<Object> get props => [this.amount, this.frequency];
}

class DoseCalculatorData extends Equatable{
  final UnitWithValue dosage;
  final UnitWithValue frequency;
  final UnitWithValue weight;

  DoseCalculatorData({this.dosage, this.frequency, this.weight,});

  void copyWith({UnitWithValue dosage, UnitWithValue frequency, UnitWithValue weight}){
    if(!dosage.isEmpty){
      this.dosage.value = dosage.value;
      this.dosage.unit = dosage.unit;
    }

    if(!frequency.isEmpty){
      this.frequency.value = frequency.value;
      this.frequency.unit = frequency.unit;
    }

    if(!weight.isEmpty){
      this.weight.value = weight.value;
      this.weight.unit = weight.unit;
    }
  }

  bool get isEmpty{
    return dosage.isEmpty || frequency.isEmpty || weight.isEmpty ? true : false;
  }
  
  @override
  // TODO: implement props
  List<Object> get props => [this.dosage, this.frequency, this.weight,];
}


class UnitWithValue extends Equatable{
   double value;
   String unit;

   UnitWithValue({@required this.value, @required this.unit});

  @override
  // TODO: implement props
  List<Object> get props => [this.value, this.unit];

  void copyWith({value, unit}){
    if(value != null){
      this.value = value;
    }

    if(unit != null){
      this.unit = unit;
    }
  }

  bool get isEmpty{
    return this.unit == null || this.value == null || this.value == 0 ? true : false;
  }
}