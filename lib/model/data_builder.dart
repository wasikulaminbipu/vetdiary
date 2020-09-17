import 'dart:core';

import 'package:equatable/equatable.dart';
import 'package:vetdiary/model/utility.dart';

abstract class DataBuilder extends Equatable {
  final int id;

  DataBuilder(this.id);

  copyWith() {}

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [
        id,
      ];
}

class TableBuilder extends DataBuilder {
  final List<String> columnTitle;
  final List<String> columnData;

  TableBuilder(this.columnTitle, this.columnData) : super(0);

  @override
  TableBuilder copyWith({List<String> columnTitle, List<String> columnData}) {
    return TableBuilder(
        columnTitle ?? this.columnTitle, columnData ?? this.columnData);
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [id, columnTitle, columnData];
}

class ListBuilder extends DataBuilder {
  final List<NamedList> data;

  ListBuilder(this.data) : super(0);

  @override
  ListBuilder copyWith({List<NamedList> data}) {
    return ListBuilder(data ?? this.data);
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [id, data];
}
