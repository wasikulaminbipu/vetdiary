import 'dart:core';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class NamedList extends Equatable {
  final String name;
  final String details;

  NamedList(this.name, this.details);

  NamedList copyWith({String name, String details}) {
    return NamedList(name ?? this.name, details ?? this.details);
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [name, details];
}

class VariableWithValue extends Equatable {
  final String variable;
  final double value;

  VariableWithValue({@required this.variable, @required this.value});

  VariableWithValue copyWith({String variable, double value}) {
    return VariableWithValue(
        variable: variable ?? this.variable, value: value ?? this.value);
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [this.value, this.variable];
}

class VariableWithSelected extends Equatable {
  final variable;
  final bool selected;

  VariableWithSelected({@required this.variable, @required this.selected});

  VariableWithSelected copyWith({var variable, bool selected}) {
    return VariableWithSelected(
        variable: variable ?? this.variable,
        selected: selected ?? this.selected);
  }

  @override
  List<Object> get props => [this.variable, this.selected];

  @override
  bool get stringify => true;
}

class TitleWithIcon extends Equatable {
  final String title;
  final IconData icon;

  TitleWithIcon({@required this.title, @required this.icon});

  @override
  List<Object> get props => [this.title, this.icon];

  @override
  bool get stringify => true;
}
