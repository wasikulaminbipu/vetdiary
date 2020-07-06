import 'dart:core';

import 'package:equatable/equatable.dart';
import 'package:vetdiary/model/utility.dart';

class Disease extends Equatable{
  final int id;
  final String title;
  final String type;
  final String causalAgent;
  final List<String> animals;
  final List<NamedList> clinicalSigns;
  final List<NamedList> grossLesions;
  final List<NamedList> treatment;
  final List<String> preventionControl;

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

  @override
  // TODO: implement props
  List<Object> get props => [id, title, type, causalAgent, animals, clinicalSigns, grossLesions, treatment, preventionControl];
}
