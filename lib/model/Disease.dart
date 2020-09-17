import 'dart:core';

import 'package:equatable/equatable.dart';
import 'package:vetdiary/model/utility.dart';

class Disease extends Equatable {
  final int id;
  final String title;
  final String type;
  final String causalAgent;
  final List<String> animals;
  final List<NamedList> clinicalSigns;
  final List<NamedList> grossLesions;
  final List<NamedList> treatment;
  final List<String> preventionControl;

  Disease(
      this.id,
      this.title,
      this.type,
      this.causalAgent,
      this.animals,
      this.clinicalSigns,
      this.grossLesions,
      this.treatment,
      this.preventionControl);

  Disease copyWith(
      {String title,
      String type,
      String causalAgent,
      List<String> animals,
      List<NamedList> clinicalSigns,
      List<NamedList> grossLesions,
      List<NamedList> treatment,
      List<String> preventionControl}) {
    return Disease(
        this.id,
        title ?? this.title,
        type ?? this.type,
        causalAgent ?? this.causalAgent,
        animals ?? this.animals,
        clinicalSigns ?? this.clinicalSigns,
        grossLesions ?? this.grossLesions,
        treatment ?? this.treatment,
        preventionControl ?? this.preventionControl);
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [
        id,
        title,
        type,
        causalAgent,
        animals,
        clinicalSigns,
        grossLesions,
        treatment,
        preventionControl
      ];
}
