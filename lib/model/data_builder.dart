import 'dart:core';

import 'package:vetdiary/model/utility.dart';

class DataBuilder {
  int id;

  DataBuilder(this.id);

  @override
  String toString() {
    // TODO: implement toString
    return "id: id";
  }
}

class TableBuilder extends DataBuilder {
  List<String> columnTitle;
  List<String> columnData;

  TableBuilder(this.columnTitle, this.columnData) : super(0);

  @override
  String toString() {
    return "column titles: $columnData , column datas: $columnData";
  }
}

class ListBuilder extends DataBuilder {
  List<NamedList> data;

  ListBuilder(this.data) : super(0);

  @override
  String toString() {
    return "data: $data";
  }
}
