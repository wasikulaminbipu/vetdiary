import 'dart:core';

class CausalAgent {
  int id;
  String title;
  String type;
  String nucleus;
  List<String> hosts;
  List<String> characteristics;
  List<String> sensitivity;

  CausalAgent(this.id, this.title, this.type, this.nucleus, this.hosts,
      this.characteristics, this.sensitivity);

  @override
  String toString() {
    return "id: $id , title: $title , type: $type , hosts: $hosts , nucleus: $nucleus , host: $hosts , characteristics: $characteristics , sensitivity: $sensitivity";
  }
}
