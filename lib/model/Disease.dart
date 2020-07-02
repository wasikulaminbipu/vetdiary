import 'dart:core';

import 'package:vetdiary/model/utility.dart';

class Disease {
  int id;
  String title;
  String type;
  String causalAgent;
  List<String> animals;
  List<NamedList> clinicalSigns;
  List<NamedList> grossLesions;
  List<NamedList> treatment;
  List<String> preventionControl;

  Disease(
      this.id,
      this.title,
      this.type,
      this.causalAgent,
      this.animals,
      this.clinicalSigns,
      this.grossLesions,
      this.treatment,
      this.preventionControl);

  @override
  String toString() {
    return "id: $id , title: $title , type: $type , animals: $animals , causal Agent: $causalAgent , Clinical Signs: $clinicalSigns , Gross Lesions: $grossLesions, Treatment: $treatment , Prevention and Control: $preventionControl";
  }
}
