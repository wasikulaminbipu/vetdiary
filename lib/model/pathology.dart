import 'dart:core';

import 'package:equatable/equatable.dart';
import 'package:vetdiary/model/utility.dart';

class Pathology extends Equatable{
  final int id;
  final String pathogenesis;
  final List<NamedList> microscopicLesions;

  Pathology(this.id, this.pathogenesis, this.microscopicLesions);

  @override
  String toString() {
    return "id: $id , pathogenesis: $pathogenesis , microscopic lesions: $microscopicLesions";
  }

  @override
  // TODO: implement props
  List<Object> get props => [id, pathogenesis, microscopicLesions];
}
