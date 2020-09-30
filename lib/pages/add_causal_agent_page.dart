import 'package:flutter/material.dart';
import 'package:vetdiary/model/utility.dart';
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
          SliverList(delegate: SliverChildListDelegate(_buildUIBody())),
        ],
      ),
    );
  }

  //Set the UI without appbar
  //UI for Sliver Body
  List<Widget> _buildUIBody() {
    List<Widget> data = [];

    //Create UI
    //create choice for type
    final Widget _choiceList = Container(
      child: Wrap(
        children: [
          VisualOptions(
            onChange: () {},
            multiSelect: false,
            contents: [
              TitleWithIcon(title: "Virus", icon: Icons.bug_report),
              TitleWithIcon(title: "Bacteria", icon: Icons.bug_report),
            ],
          ),
        ],
      ),
    );

    //add all the ui components
    data.add(_choiceList);

    return data;
  }
}
