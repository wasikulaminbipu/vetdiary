import 'package:flutter/material.dart';
import 'package:vetdiary/model/utility.dart';
import 'package:vetdiary/widgets/multiple_option_button/multiple_option_button.dart';
import 'package:vetdiary/widgets/selection_dialogue/selection_dialogue.dart';
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

    //This is for adding host
    final Widget _add_host = Container(
      padding: EdgeInsets.all(5.0),
      child: Row(
        children: [
          Text(
            "Hosts",
            style:
                Theme.of(context).textTheme.bodyText1.copyWith(fontSize: 20.0),
          ),
          Spacer(),
          IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return SelectionDialogue(
                        title: "Add Pathogen",
                        option: <String>["ABCD", "CDEF", "alks", "JSHDK"],
                      );
                    },
                    useSafeArea: true);
              }),
        ],
      ),
    );

    //add all the ui components
    data.add(_choiceList);
    data.add(_basicInputData);
    data.add(_bacterialView);
    data.add(_add_host);

    return data;
  }

  String _validateScientificName(String dat) {
    if (!dat.contains(" ") || dat.split(" ").length != 2)
      return "Invalid Scientific Name";
    else
      return null;
  }
}
