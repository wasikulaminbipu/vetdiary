import 'dart:core';

class NamedList {
  String name;
  String details;

  NamedList(this.name, this.details);

  @override
  String toString() {
    return "name: $name , details: $details";
  }
}
