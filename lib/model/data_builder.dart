import 'dart:core';

import 'package:equatable/equatable.dart';
import 'package:vetdiary/model/utility.dart';

class DataBuilder extends Equatable{
  final int id;

  DataBuilder(this.id);

  @override
  String toString() {
    // TODO: implement toString
    return "id: id";
  }

  @override
  // TODO: implement props
  List<Object> get props => [id];
}

class TableBuilder extends DataBuilder {
  final List<String> columnTitle;
  final List<String> columnData;

  TableBuilder(this.columnTitle, this.columnData) : super(0);

  @override
  String toString() {
    return "column titles: $columnData , column datas: $columnData";
  }

  @override
  // TODO: implement props
  List<Object> get props => [id, columnTitle, columnData];
}

class ListBuilder extends DataBuilder {
  List<NamedList> data;

  ListBuilder(this.data) : super(0);

  @override
  String toString() {
    return "data: $data";
  }

  @override
  // TODO: implement props
  List<Object> get props => [id, data];
}
