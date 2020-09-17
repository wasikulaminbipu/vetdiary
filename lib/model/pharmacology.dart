import 'dart:core';

import 'package:equatable/equatable.dart';
import 'package:vetdiary/model/utility.dart';

class Pharmacology extends Equatable {
  final int id;
  final String genericName;
  final String modeOfAction;
  final String theraputicClass;
  final String pregnencyCategory;
  final List<NamedList> dose;
  final List<String> prohibition;
  final List<NamedList> sideEffects;
  final List<NamedList> interactions;
  final List<NamedList> indications;

  Pharmacology(
      this.id,
      this.genericName,
      this.modeOfAction,
      this.theraputicClass,
      this.pregnencyCategory,
      this.dose,
      this.prohibition,
      this.sideEffects,
      this.indications,
      this.interactions);

  Pharmacology copyWith(
      {String genericName,
      String modeOfAction,
      String theraputicClass,
      String pregnencyCategory,
      List<NamedList> dose,
      List<String> prohibition,
      List<NamedList> sideEffects,
      List<NamedList> indications,
      List<NamedList> interactions}) {
    return Pharmacology(
        this.id,
        genericName ?? this.genericName,
        modeOfAction ?? this.modeOfAction,
        theraputicClass ?? this.theraputicClass,
        pregnencyCategory ?? this.pregnencyCategory,
        dose ?? this.dose,
        prohibition ?? this.prohibition,
        sideEffects ?? this.sideEffects,
        indications ?? this.indications,
        interactions ?? this.interactions);
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [
        id,
        genericName,
        modeOfAction,
        theraputicClass,
        pregnencyCategory,
        dose,
        prohibition,
        sideEffects,
        indications,
        interactions
      ];
}
