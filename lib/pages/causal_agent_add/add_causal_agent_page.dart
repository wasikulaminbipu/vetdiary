import 'package:flutter/material.dart';
import 'package:vetdiary/model/utility.dart';
import 'package:vetdiary/widgets/multiple_option_button/multiple_option_button.dart';
import 'package:vetdiary/widgets/visual_options/visual_options.dart';

class AddCausalAgent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            actions: [
              IconButton(icon: Icon(Icons.refresh), onPressed: () {}),
            ],
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Add Pathogen"),
              centerTitle: true,
            ),
          ),
          SliverList(delegate: SliverChildListDelegate(_buildUIBody(context))),
        ],
      ),
    );
  }

  //Set the UI without appbar
  //UI for Sliver Body
  List<Widget> _buildUIBody(BuildContext context) {
    List<Widget> data = [];

    //Create UI
    //create choice for type
    final Widget _choiceList = Container(
      child: Column(
        children: [
          VisualOptions(
            onChange: () {},
            multiSelect: false,
            contents: [
              TitleWithIcon(title: "Virus", icon: Icons.bug_report),
              TitleWithIcon(title: "Bacteria", icon: Icons.bug_report),
              TitleWithIcon(title: "Protozoa", icon: Icons.bug_report),
              TitleWithIcon(title: "Helminth", icon: Icons.bug_report)
            ],
          )
        ],
      ),
    );

    //Get basic Input Data That is common to all type
    final Widget _basicInputData = FractionallySizedBox(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          autovalidate: true,
          decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
            labelText: "Scientific Name",
          ),
          validator: _validateScientificName,
        ),
      ),
    );

    final Widget _bacterialView = Container(
      child: Column(
        children: [
          //Get Gram Staining
          MultipleOptionButton(
            title: "Gram Staining",
            options: ["+ (ve)", "- (ve)"],
            onPressed: (String selected) {
              print(selected);
            },
          ),
        ],
      ),
    );

    //add all the ui components
    data.add(_choiceList);
    data.add(_basicInputData);
    data.add(_bacterialView);

    return data;
  }

  String _validateScientificName(String dat) {
    if (!dat.contains(" ") || dat.split(" ").length != 2)
      return "Invalid Scientific Name";
    else
      return null;
  }
}
