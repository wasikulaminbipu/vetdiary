import 'dart:core';

import 'package:vetdiary/model/data_builder.dart';

class AnimalHusbendry {
  int id;
  String animal;
  List<DataBuilder> data;

  AnimalHusbendry(this.id, this.data, this.animal);

  @override
  String toString() {
    return "id: $id , animal: $animal , data: $data";
  }
}

