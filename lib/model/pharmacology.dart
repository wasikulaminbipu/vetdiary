import 'dart:core';

import 'package:vetdiary/model/utility.dart';

class Pharmacology {
  int id;
  String genericName;
  String modeOfAction;
  String theraputicClass;
  String pregnencyCategory;
  List<NamedList> dose;
  List<String> prohibition;
  List<NamedList> sideEffects;

  Pharmacology(
      this.id,
      this.genericName,
      this.modeOfAction,
      this.theraputicClass,
      this.pregnencyCategory,
      this.dose,
      this.prohibition,
      this.sideEffects);

  @override
  String toString() {
    return "id: $id , generic name: $genericName , mode of action: $modeOfAction , theraputic class: $theraputicClass , pregnency category: $pregnencyCategory , dose: $dose , prohibition: $prohibition , side effects: $sideEffects";
  }
}
