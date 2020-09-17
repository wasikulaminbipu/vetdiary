import 'dart:core';

import 'package:equatable/equatable.dart';
import 'package:vetdiary/model/utility.dart';

class Pathology extends Equatable {
  final int id;
  final String pathogenesis;
  final List<NamedList> microscopicLesions;

  Pathology(this.id, this.pathogenesis, this.microscopicLesions);

  Pathology copyWith(
      {String pathogenesis, List<NamedList> microscopicLesions}) {
    return Pathology(this.id, pathogenesis ?? this.pathogenesis,
        microscopicLesions ?? this.microscopicLesions);
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [id, pathogenesis, microscopicLesions];
}
