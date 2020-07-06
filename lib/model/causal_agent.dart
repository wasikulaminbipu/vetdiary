import 'dart:core';

import 'package:equatable/equatable.dart';

class CausalAgent extends Equatable{
  final int id;
  final String title;
  final String type;
  final String nucleus;
  final List<String> hosts;
  final List<String> characteristics;
  final List<String> sensitivity;

  CausalAgent(this.id, this.title, this.type, this.nucleus, this.hosts,
      this.characteristics, this.sensitivity);

  @override
  String toString() {
    return "id: $id , title: $title , type: $type , hosts: $hosts , nucleus: $nucleus , host: $hosts , characteristics: $characteristics , sensitivity: $sensitivity";
  }

  @override
  // TODO: implement props
  List<Object> get props => [id, title, type, nucleus, hosts, characteristics, sensitivity];
}
