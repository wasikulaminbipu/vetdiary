import 'dart:core';

import 'package:vetdiary/model/data_builder.dart';

class Physiology {
  int id;
  String animal;
  List<DataBuilder> data;

  Physiology(this.id, this.animal, this.data);

  @override
  String toString() {
    return "id: $id , animal: $animal , data: $data";
  }
}
