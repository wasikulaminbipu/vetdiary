import 'dart:core';

import 'package:equatable/equatable.dart';

class CausalAgent extends Equatable {
  final int id;
  final String title;
  final String type;
  final String nucleus;
  final List<String> hosts;
  final List<String> characteristics;
  final List<String> sensitivity;

  CausalAgent(this.id, this.title, this.type, this.nucleus, this.hosts,
      this.characteristics, this.sensitivity);

  CausalAgent copyWith(
      {String title,
      String type,
      String nucleus,
      List<String> hosts,
      List<String> characteristics,
      List<String> sensitivity}) {
    return CausalAgent(
        this.id,
        title ?? this.title,
        type ?? this.type,
        nucleus ?? this.nucleus,
        hosts ?? this.hosts,
        characteristics ?? this.characteristics,
        sensitivity ?? this.sensitivity);
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props =>
      [id, title, type, nucleus, hosts, characteristics, sensitivity];
}
