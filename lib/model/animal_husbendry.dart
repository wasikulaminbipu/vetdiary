import 'dart:core';

import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:vetdiary/model/data_builder.dart';

class AnimalHusbendry extends Equatable {
  final int id;
  final String animal;
  final List<DataBuilder> data;

  AnimalHusbendry(
      {@required this.id, @required this.animal, @required this.data});

  AnimalHusbendry copyWith({animal, data}) {
    return AnimalHusbendry(
        id: this.id, animal: animal ?? this.animal, data: data ?? this.data);
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [id, animal, data];
}
