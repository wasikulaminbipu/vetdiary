import 'dart:core';

import 'package:equatable/equatable.dart';
import 'package:vetdiary/model/data_builder.dart';

class Physiology extends Equatable {
  final int id;
  final String animal;
  final List<DataBuilder> data;

  Physiology(this.id, this.animal, this.data);

  @override
  String toString() {
    return "id: $id , animal: $animal , data: $data";
  }

  @override
  // TODO: implement props
  List<Object> get props => [id, animal, data];
}
