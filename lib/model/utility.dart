import 'dart:core';

import 'package:equatable/equatable.dart';

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
