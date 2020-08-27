import 'dart:core';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class NamedList extends Equatable {
  final String name;
  final String details;

  NamedList(this.name, this.details);

  @override
  String toString() {
    return "name: $name , details: $details";
  }

  @override
  // TODO: implement props
  List<Object> get props => [name, details];
}

class VariableWithValue {
  final String variable;
  final double value;

  VariableWithValue({@required this.variable, @required this.value});
}
