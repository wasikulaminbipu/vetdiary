import 'dart:core';

import 'package:equatable/equatable.dart';
import 'package:vetdiary/model/data_builder.dart';

class Physiology extends Equatable {
  final int id;
  final String animal;
  final List<DataBuilder> data;

  Physiology(this.id, this.animal, this.data);

  Physiology copyWith({String animal, List<DataBuilder> data}) {
    return Physiology(this.id, animal ?? this.animal, data ?? this.data);
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [id, animal, data];
}
