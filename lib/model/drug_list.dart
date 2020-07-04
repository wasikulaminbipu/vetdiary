import 'dart:core';

import 'package:vetdiary/model/utility.dart';

class DrugList {
  int id;
  String tradeName;
  String genericName;
  String concentration;
  String type;
  int price;
  List<NamedList> dosage;

  DrugList(this.id, this.tradeName, this.genericName, this.concentration,
      this.type, this.price, this.dosage);

  @override
  String toString() {
    return "id: $id , tradename: $tradeName , generic name: $genericName , concentration: $concentration , type: $type , price: $price , dosage: dosage";
  }
}
