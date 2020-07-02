import 'dart:core';

import 'package:vetdiary/model/utility.dart';

class Pathology {
  int id;
  String pathogenesis;
  List<NamedList> microscopicLesions;

  Pathology(this.id, this.pathogenesis, this.microscopicLesions);

  @override
  String toString() {
    return "id: $id , pathogenesis: $pathogenesis , microscopic lesions: $microscopicLesions";
  }
}
