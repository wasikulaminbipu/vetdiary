import 'dart:core';

import 'package:equatable/equatable.dart';
import 'package:vetdiary/model/utility.dart';

class DrugList extends Equatable {
  final int id;
  final String tradeName;
  final String genericName;
  final String concentration;
  final String type;
  final int price;
  final List<NamedList> dosage;

  DrugList(this.id, this.tradeName, this.genericName, this.concentration,
      this.type, this.price, this.dosage);

  DrugList copyWith(
      {String tradeName,
      String concentration,
      String type,
      int price,
      List<NamedList> dosage}) {
    return DrugList(
        this.id,
        tradeName ?? this.tradeName,
        genericName ?? this.genericName,
        concentration ?? this.concentration,
        type ?? this.type,
        price ?? this.price,
        dosage ?? this.dosage);
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props =>
      [id, tradeName, genericName, concentration, type, price, dosage];
}
