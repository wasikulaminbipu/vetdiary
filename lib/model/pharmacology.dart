import 'dart:core';

import 'package:equatable/equatable.dart';
import 'package:vetdiary/model/utility.dart';

class Pharmacology extends Equatable{
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
      this.interactions
      );

  @override
  String toString() {
    return "id: $id , generic name: $genericName , mode of action: $modeOfAction , theraputic class: $theraputicClass , pregnency category: $pregnencyCategory , dose: $dose , prohibition: $prohibition , side effects: $sideEffects , interactions: $interactions , indications: $indications";
  }

  @override
  // TODO: implement props
  List<Object> get props => [id, genericName, modeOfAction, theraputicClass, pregnencyCategory, dose, prohibition, sideEffects, indications, interactions];
}
