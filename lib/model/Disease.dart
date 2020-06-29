import 'dart:core';

class Disease {
  int id;
  String title;
  String type;
  List<String> animals;

  Disease(this.id, this.title, this.type, this.animals);

  @override
  String toString() {
    return "id: $id, title: $title, type: $type, animals: $animals";
  }
}
