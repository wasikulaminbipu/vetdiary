import 'dart:core';

import 'package:equatable/equatable.dart';
import 'package:vetdiary/model/utility.dart';

class DrugList extends Equatable{
  final int id;
  final String tradeName;
  final String genericName;
  final String concentration;
  final String type;
  final int price;
  final List<NamedList> dosage;

  DrugList(this.id, this.tradeName, this.genericName, this.concentration,
      this.type, this.price, this.dosage);

  @override
  String toString() {
    return "id: $id , tradename: $tradeName , generic name: $genericName , concentration: $concentration , type: $type , price: $price , dosage: dosage";
  }

  @override
  // TODO: implement props
  List<Object> get props => [id, tradeName, genericName, concentration, type, price, dosage];
}
